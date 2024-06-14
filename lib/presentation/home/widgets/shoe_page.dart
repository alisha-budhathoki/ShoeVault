import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/presentation/home/cubits/shoe_cubit.dart';
import 'package:shoe_vault/presentation/home/widgets/widgets.dart';
import 'package:shoe_vault/ui/ui.dart';

class ShoesPage extends StatelessWidget {
  const ShoesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoeCubit, ShoeState>(
      builder: (context, state) {
        if (state is ShoeLoading) {
          return const HomeViewShimmer();
        } else if (state is ShoeError) {
          return Center(child: Text(state.message));
        } else if (state is ShoeLoaded) {
          final shoes = state.shoes;
          final brands = shoes.map((shoe) => shoe.brand).toSet().toList();
          brands.insert(0, 'All');

          return DefaultTabController(
            length: brands.length,
            child: Column(
              children: [
                Container(
                  color: Palette.light.shade5,
                  child: TabBar(
                    indicatorColor: Colors.transparent,
                    labelColor: Palette.dark.shade5,
                    labelStyle:
                        TextStyles.h6.withColor(Palette.dark.shade5).semibold,
                    unselectedLabelStyle: TextStyles.h6
                        .withColor(Palette.textDisabled.shade4)
                        .semibold,
                    unselectedLabelColor: Palette.textDisabled.shade1,
                    isScrollable: true,
                    tabs: brands.map((brand) => Tab(text: brand)).toList(),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: brands.map((brand) {
                      final filteredShoes = brand == 'All'
                          ? shoes
                          : shoes.where((shoe) => shoe.brand == brand).toList();

                      return ShoeTabBody(shoes: filteredShoes);
                    }).toList(),
                  ),
                ),
              ],
            ),
          );
        } else {
          return const Center(child: Text('Unexpected state'));
        }
      },
    );
  }
}
