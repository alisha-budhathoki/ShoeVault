import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/presentation/shoes_filter/cubits/shoes_filter_cubit.dart';
import 'package:shoe_vault/presentation/shoes_filter/widgets/widgets.dart';
import 'package:shoe_vault/ui/ui.dart';

class ShoeFilterView extends StatelessWidget {
  const ShoeFilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ShoesFilterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Filter'),
        ),
        body: const _ShoeFilterContent(),
        bottomNavigationBar: const BottomActionBar(),
      ),
    );
  }
}

class _ShoeFilterContent extends StatelessWidget {
  const _ShoeFilterContent();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Brands',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            BrandSelection(),
            const SizedBox(height: 28.0),
            Text(
              'Price Range',
              style: TextStyles.h4.bold,
            ),
            const SizedBox(height: 8.0),
            const PriceRangeSlider(),
            const SizedBox(height: 28.0),
            Text(
              'Sort By',
              style: TextStyles.h4.bold,
            ),
            const SizedBox(height: 8.0),
            SortBySelection(),
            const SizedBox(height: 28.0),
            Text(
              'Gender',
              style: TextStyles.h4.bold,
            ),
            const SizedBox(height: 8.0),
            GenderSelection(),
            const SizedBox(height: 28.0),
            Text(
              'Color',
              style: TextStyles.h4.bold,
            ),
            const SizedBox(height: 8.0),
            ColorSelection(),
          ],
        ),
      ),
    );
  }
}
