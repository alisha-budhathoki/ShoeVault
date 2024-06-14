import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/presentation/shoe_detail/cubit/shoe_detail_cubit.dart';
import 'package:shoe_vault/presentation/shoe_detail/view_models/review_VM.dart';
import 'package:shoe_vault/presentation/shoe_detail/view_models/shoe_detail_VM.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoeDetailCubit, ShoeDetailState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: SizedBox.new,
          loaded: _buildReviews,
        );
      },
    );
  }

  Widget _buildReviews(ShoeDetailVM shoe) {
    return Column(
      children: shoe.reviews.map((review) {
        return ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(''),
          ),
          title: _buildNameTime(review),
          subtitle: _buildRatingReviews(review),
        );
      }).toList(),
    );
  }

  Widget _buildRatingReviews(ReviewVM review) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: List.generate(5, (index) {
            return Icon(
              Icons.star,
              color: index < review.rating ? Colors.amber : Colors.grey,
              size: 16.0,
            );
          }),
        ),
        const SizedBox(height: 4.0),
        Text(review.comment),
      ],
    );
  }

  Widget _buildNameTime(ReviewVM review) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          review.reviewerName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text(
          'Today',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
