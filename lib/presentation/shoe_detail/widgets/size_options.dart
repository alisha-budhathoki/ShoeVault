import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/presentation/shoe_detail/cubit/shoe_detail_cubit.dart';
import 'package:shoe_vault/presentation/shoe_detail/view_models/shoe_detail_VM.dart';
import 'package:shoe_vault/ui/ui.dart';

class SizeOptions extends StatelessWidget {
  const SizeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoeDetailCubit, ShoeDetailState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: SizedBox.new,
          loaded: _buildSizeSection,
        );
      },
    );
  }

  Wrap _buildSizeSection(ShoeDetailVM shoe) {
    return Wrap(
      spacing: 8.0,
      children: shoe.sizes.map((size) {
        return ChoiceChip(
          selectedColor: Palette.dark.shade5,
          backgroundColor: Palette.light.shade5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50), // Circular border
          ),
          label: Text(size),
          selected: false,
          onSelected: (selected) {},
        );
      }).toList(),
    );
  }
}
