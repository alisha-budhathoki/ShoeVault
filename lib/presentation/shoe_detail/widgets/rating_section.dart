import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoe_vault/presentation/shoe_detail/cubit/shoe_detail_cubit.dart';
import 'package:shoe_vault/presentation/shoe_detail/view_models/shoe_detail_VM.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoeDetailCubit, ShoeDetailState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          loaded: (shoe) {
            return Row(
              children: [
                _buildRatingBar(shoe),
                const SizedBox(width: 8.0),
                Text(
                  '${shoe.rating}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(width: 4.0),
                Text(
                  '(${shoe.reviews.length} Reviews)',
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildRatingBar(ShoeDetailVM shoe) {
    return RatingBarIndicator(
      rating: shoe.rating,
      itemBuilder: (context, index) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      itemSize: 20.0,
    );
  }
}
