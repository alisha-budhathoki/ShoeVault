import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_vault/core/di/locator.dart';
import 'package:shoe_vault/core/routing/routing_index.dart';
import 'package:shoe_vault/data/services/shoe_service/shoe_service.dart';
import 'package:shoe_vault/presentation/home/cubits/shoe_cubit.dart';
import 'package:shoe_vault/ui/ui.dart';

class ShoeVaultApp extends StatelessWidget {
  ShoeVaultApp({super.key});

  final AppRouter _appRouter = locator<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ShoeCubit(shoeService: locator<ShoeService>()),
        ),
      ],
      child: MaterialApp.router(
        theme: AppTheme.lightTheme,
        routerDelegate: _appRouter.router.routerDelegate,
        routeInformationParser: _appRouter.router.routeInformationParser,
        routeInformationProvider: _appRouter.router.routeInformationProvider,
      ),
    );
  }
}
