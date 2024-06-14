import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/presentation/shoes_filter/cubits/shoes_filter_cubit.dart';

class BrandSelection extends StatelessWidget {
  BrandSelection({super.key});

  final List<String> brands = ['Nike', 'Puma', 'Adidas', 'Reebok', 'Jordan'];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoesFilterCubit, ShoeFilterState>(
      builder: (context, state) {
        return Wrap(
          spacing: 10.0,
          children: brands.map((brand) {
            final isSelected = state.selectedBrand == brand;
            return ChoiceChip(
              label: Text(brand),
              selected: isSelected,
              onSelected: (selected) {
                context
                    .read<ShoesFilterCubit>()
                    .updateBrand(selected ? brand : null);
              },
            );
          }).toList(),
        );
      },
    );
  }
}
