import 'package:flutter/material.dart';
import 'package:shoe_vault/core/di/locator.dart';
import 'package:shoe_vault/core/routing/routing_index.dart';

class ShoeVaultApp extends StatelessWidget {
  ShoeVaultApp({super.key});

  final AppRouter _appRouter = locator<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.router.routerDelegate,
      routeInformationParser: _appRouter.router.routeInformationParser,
      routeInformationProvider: _appRouter.router.routeInformationProvider,
    );
  }
}
