import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/presentation/shoe_detail/cubit/shoe_detail_cubit.dart';

class ShoeDetailBody extends StatelessWidget {
  const ShoeDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoeDetailCubit, ShoeDetailState>(
      builder: (context, state) {
        return state.when(
          loading: () => const Text('loading'),
          empty: () => const Text('empty'),
          error: (meg) => const Text('error'),
          loaded: (shoeDetail) => const Center(child: Text('loaded')),
        );
      },
    );
  }
}
