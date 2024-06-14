import 'package:go_router/go_router.dart';
import 'package:shoe_vault/presentation/error_screen.dart';
import 'package:shoe_vault/presentation/home/home_view.dart';
import 'package:shoe_vault/presentation/second_screen.dart';
import 'package:shoe_vault/presentation/shoe_detail/shoe_detail_view.dart';
import 'package:shoe_vault/presentation/shoes_filter/shoes_filter_view.dart';

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
            GoRoute(
              path: '/shoeDetail',
              builder: (context, state) {
                final shoeId = state.extra! as String;
                return ShoeDetailView(shoeId: shoeId);
              },
            ),
            GoRoute(
              path: '/shoeFilter',
              builder: (context, state) {
                return const ShoeFilterView();
              },
            ),
          ],
          errorBuilder: (context, state) => ErrorScreen(
            errorMessage: state.error.toString(),
          ),
        );

  final GoRouter router;
}
