import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/presentation/shoes_filter/cubits/shoes_filter_cubit.dart';

class PriceRangeSlider extends StatelessWidget {
  const PriceRangeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoesFilterCubit, ShoeFilterState>(
      builder: (context, state) {
        return SizedBox(
          height: 50,
          child: RangeSlider(
            values: const RangeValues(200, 750),
            max: 1750,
            onChanged: (range) {
              context
                  .read<ShoesFilterCubit>()
                  .updatePriceRange(range.start, range.end);
            },
          ),
        );
      },
    );
  }
}
