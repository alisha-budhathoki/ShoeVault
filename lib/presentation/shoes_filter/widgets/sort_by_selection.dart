import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/presentation/shoes_filter/cubits/shoes_filter_cubit.dart';
import 'package:shoe_vault/ui/ui.dart';

class SortBySelection extends StatelessWidget {
  SortBySelection({super.key});

  final List<String> sortByOptions = [
    'Most recent',
    'Lowest price',
    'Highest price',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoesFilterCubit, ShoeFilterState>(
      builder: (context, state) {
        return Wrap(
          spacing: 10,
          children: sortByOptions.map((option) {
            final isSelected = state.selectedSortBy == option;
            return ChoiceChip(
              label: Text(
                option,
                style: isSelected
                    ? TextStyles.h4.withColor(Palette.light.shade5)
                    : TextStyles.h4.withColor(Palette.dark.shade5),
              ),
              selected: isSelected,
              selectedColor: Palette.dark.shade5,
              backgroundColor: Palette.light.shade5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50), // Circular border
              ),
              onSelected: (selected) {
                context
                    .read<ShoesFilterCubit>()
                    .updateSortBy(selected ? option : null);
              },
            );
          }).toList(),
        );
      },
    );
  }
}
