import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/presentation/shoes_filter/cubits/shoes_filter_cubit.dart';
import 'package:shoe_vault/ui/ui.dart';

class GenderSelection extends StatelessWidget {
  GenderSelection({super.key});

  final List<String> genders = ['Man', 'Woman', 'Unisex'];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoesFilterCubit, ShoeFilterState>(
      builder: (context, state) {
        return Wrap(
          spacing: 10.0,
          children: genders.map((gender) {
            final isSelected = state.selectedGender == gender;
            return ChoiceChip(
              label: Text(
                gender,
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
                    .updateGender(selected ? gender : null);
              },
            );
          }).toList(),
        );
      },
    );
  }
}
