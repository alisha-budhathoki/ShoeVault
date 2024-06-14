import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/presentation/shoes_filter/cubits/shoes_filter_cubit.dart';
import 'package:shoe_vault/ui/ui.dart';

class ColorSelection extends StatelessWidget {
  ColorSelection({super.key});

  final List<String> colors = ['Red', 'Blue', 'Green', 'Black', 'White'];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoesFilterCubit, ShoeFilterState>(
      builder: (context, state) {
        return Wrap(
          spacing: 10,
          children: colors.map((color) {
            final isSelected = state.selectedColor == color;
            return ChoiceChip(
              selectedColor: Palette.dark.shade5,
              backgroundColor: Palette.light.shade5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50), // Circular border
              ),
              label: Text(
                color,
                style: isSelected
                    ? TextStyles.h4.withColor(Palette.light.shade5)
                    : TextStyles.h4.withColor(Palette.dark.shade5),
              ),
              selected: isSelected,
              onSelected: (selected) {
                context
                    .read<ShoesFilterCubit>()
                    .updateColor(selected ? color : null);
              },
            );
          }).toList(),
        );
      },
    );
  }
}
