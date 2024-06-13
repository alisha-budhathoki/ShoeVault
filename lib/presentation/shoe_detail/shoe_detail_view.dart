import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/core/constants/constants_index.dart';
import 'package:shoe_vault/core/di/locator.dart';
import 'package:shoe_vault/data/services/shoe_service/shoe_service.dart';
import 'package:shoe_vault/presentation/shoe_detail/cubit/shoe_detail_cubit.dart';
import 'package:shoe_vault/presentation/shoe_detail/widgets/widget_index.dart';
import 'package:shoe_vault/ui/ui.dart';

class ShoeDetailView extends StatelessWidget {
  const ShoeDetailView({super.key, required this.shoeId});

  final String shoeId;

  @override
  Widget build(BuildContext context) {
    return PaddedScaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const AdaptiveIcon(
              imageUrl: AppIcons.cart,
              height: 28.0,
            ),
            onPressed: () {
              // Handle cart icon tap
            },
          ),
          const SizedBox(width: 16.0),
        ],
      ),
      body: BlocProvider(
        create: (context) =>
            ShoeDetailCubit(shoeService: locator<ShoeService>())
              ..fetchShoeDetail(shoeId),
        child: const ShoeDetailBody(),
      ),
    );
  }
}
