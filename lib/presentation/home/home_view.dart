import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shoe_vault/core/constants/app_icons.dart';
import 'package:shoe_vault/core/di/locator.dart';
import 'package:shoe_vault/core/routing/routes.dart';
import 'package:shoe_vault/data/services/shoe_service/shoe_service.dart';
import 'package:shoe_vault/presentation/home/cubits/shoe_cubit.dart';
import 'package:shoe_vault/presentation/home/widgets/widgets.dart';
import 'package:shoe_vault/ui/ui.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShoeCubit(shoeService: locator<ShoeService>()),
      child: PaddedScaffold(
        appBar: const HomeAppBar(),
        body: Stack(
          children: [
            const Center(
              child: ShoesPage(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomFAB(
                  onPressed: () {
                    context.push(Routes.shoeFilter);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const AdaptiveIcon(imageUrl: AppIcons.filter),
                      const SizedBox(width: 8.0),
                      Text(
                        'Filter',
                        style: TextStyles.h3.withColor(Palette.light.shade5),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
