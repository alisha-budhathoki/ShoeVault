import 'package:flutter/material.dart';
import 'package:shoe_vault/ui/ui.dart';

class HomeViewShimmer extends StatelessWidget {
  const HomeViewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: 6, // Number of shimmer tiles
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.7, // Adjust for image and text
        ),
        itemBuilder: (context, index) {
          return _buildShimmerTile();
        },
      ),
    );
  }

  Widget _buildShimmerTile() {
    return const Column(
      children: [
        Expanded(
          child: ShimmerLoadingIndicator(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        SizedBox(height: 8.0),
        ShimmerLoadingIndicator(height: 16.0, width: 100.0), // Name placeholder
        SizedBox(height: 8.0),
        ShimmerLoadingIndicator(
          height: 16.0,
          width: 60.0,
        ),
        SizedBox(height: 8.0),
        ShimmerLoadingIndicator(height: 16.0, width: 40.0), // Price placeholder
      ],
    );
  }
}
