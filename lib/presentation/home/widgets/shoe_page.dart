import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/presentation/home/cubits/shoe_cubit.dart';

class ShoesPage extends StatelessWidget {
  const ShoesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoes'),
      ),
      body: BlocBuilder<ShoeCubit, ShoeState>(
        builder: (context, state) {
          if (state is ShoeLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ShoeLoaded) {
            return ListView.builder(
              itemCount: state.shoes.length,
              itemBuilder: (context, index) {
                final shoe = state.shoes[index];
                return ListTile(
                  title: Text(shoe.name),
                  subtitle: Text(shoe.brand),
                  trailing: IconButton(
                    icon: Icon(
                      shoe.isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: shoe.isFavorite ? Colors.red : null,
                    ),
                    onPressed: () {
                      context.read<ShoeCubit>().toggleFavorite(shoe.id);
                    },
                  ),
                  onTap: () {
                    // Handle shoe tap
                  },
                );
              },
            );
          } else if (state is ShoeError) {
            return Center(child: Text(state.message));
          } else {
            return Container();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle adding a new shoe
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
