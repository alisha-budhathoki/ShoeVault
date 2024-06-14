import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/presentation/shoe_detail/cubit/shoe_detail_cubit.dart';
import 'package:shoe_vault/presentation/shoe_detail/view_models/shoe_detail_VM.dart';
import 'package:shoe_vault/presentation/shoe_detail/widgets/size_options.dart';
import 'package:shoe_vault/presentation/shoe_detail/widgets/widget_index.dart';
import 'package:shoe_vault/ui/theme/text_styles.dart';
import 'package:shoe_vault/ui/ui.dart';

class ShoeDetailBody extends StatelessWidget {
  const ShoeDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoeDetailCubit, ShoeDetailState>(
      builder: (context, state) {
        return state.when(
          loading: () => const ShoeDetailLoadingShimmer(),
          empty: () => const Text('empty'),
          error: (meg) => const Text('error'),
          loaded: _buildShoeDetail,
        );
      },
    );
  }

  Widget _buildShoeDetail(ShoeDetailVM shoe) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ShoeImageSlider(),
            const SizedBox(height: 16.0),
            Text(
              shoe.name,
              style: TextStyles.h6.bold,
            ),
            const SizedBox(height: 8.0),
            const RatingSection(),
            const SizedBox(height: 16.0),
            Text(
              'Size',
              style: TextStyles.h4.bold,
            ),
            const SizedBox(height: 8.0),
            const SizeOptions(),
            const SizedBox(height: 16.0),
            const Text(
              'Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              shoe.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24.0),
            Text(
              'Review (${shoe.reviews.length})',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            const ReviewSection(),
            const SizedBox(height: 16.0),
            const DetailFooterButtons(),
          ],
        ),
      ),
    );
  }
}
