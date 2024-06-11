import 'package:go_router/go_router.dart';
import 'package:shoe_vault/presentation/error_screen.dart';
import 'package:shoe_vault/presentation/home/home_view.dart';
import 'package:shoe_vault/presentation/second_screen.dart';

class AppRouter {
  AppRouter()
      : router = GoRouter(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const HomeView(),
            ),
            GoRoute(
              path: '/secondScreen',
              builder: (context, state) => const SecondScreen(),
            ),
          ],
          errorBuilder: (context, state) => ErrorScreen(
            errorMessage: state.error.toString(),
          ),
        );

  final GoRouter router;
}
