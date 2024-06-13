import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/core/di/locator.dart';
import 'package:shoe_vault/data/services/shoe_service/shoe_service.dart';
import 'package:shoe_vault/presentation/home/cubits/shoe_cubit.dart';
import 'package:shoe_vault/presentation/home/widgets/widgets.dart';
import 'package:shoe_vault/ui/ui.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddedScaffold(
      appBar: const HomeAppBar(),
      body: BlocProvider(
        create: (context) => ShoeCubit(shoeService: locator<ShoeService>()),
        child: const Center(
          child: ShoesPage(),
        ),
      ),
    );
  }
}
