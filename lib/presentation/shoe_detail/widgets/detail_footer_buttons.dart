import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/presentation/shoe_detail/cubit/shoe_detail_cubit.dart';
import 'package:shoe_vault/presentation/shoe_detail/view_models/shoe_detail_VM.dart';
import 'package:shoe_vault/ui/ui.dart';

class DetailFooterButtons extends StatelessWidget {
  const DetailFooterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoeDetailCubit, ShoeDetailState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: SizedBox.new,
          loaded: (shoe) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildPriceSection(shoe),
              const SizedBox(height: 16.0),
              _buildCartButton(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCartButton() {
    return PrimaryButton(
      onPressed: () {
        // Handle add to cart
      },
      labelText: 'ADD TO CART',
    );
  }

  Widget _buildPriceSection(ShoeDetailVM shoe) {
    return Column(
      children: [
        Text(
          'Price',
          style: TextStyles.bodyText1.regular
              .withColor(Palette.textDisabled.shade4),
        ),
        const SizedBox(height: 4.0),
        Text('\$${shoe.price}', style: TextStyles.h4.bold),
      ],
    );
  }
}
