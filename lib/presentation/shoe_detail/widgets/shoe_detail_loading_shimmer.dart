import 'package:flutter/material.dart';
import 'package:shoe_vault/ui/ui.dart';

class ShoeDetailLoadingShimmer extends StatelessWidget {
  const ShoeDetailLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShimmerLoadingIndicator(
              height: 250.0,
              borderRadius: 10.0,
            ),
            SizedBox(height: 16.0),
            ShimmerLoadingIndicator(
              height: 30.0,
              width: double.infinity,
            ),
            SizedBox(height: 8.0),
            ShimmerLoadingIndicator(
              height: 20.0,
              width: 150.0,
            ),
            SizedBox(height: 16.0),
            ShimmerLoadingIndicator(
              height: 20.0,
              width: 100.0,
            ),
            SizedBox(height: 8.0),
            ShimmerLoadingIndicator(
              height: 50.0,
              width: double.infinity,
            ),
            SizedBox(height: 16.0),
            ShimmerLoadingIndicator(
              height: 20.0,
              width: 100.0,
            ),
            SizedBox(height: 8.0),
            ShimmerLoadingIndicator(
              height: 100.0,
              width: double.infinity,
            ),
            SizedBox(height: 16.0),
            ShimmerLoadingIndicator(
              height: 100.0,
              width: double.infinity,
            ),
            SizedBox(height: 16.0),
            ShimmerLoadingIndicator(
              height: 50.0,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
