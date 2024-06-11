import 'package:get_it/get_it.dart';
import 'package:shoe_vault/core/routing/routing_index.dart';
import 'package:shoe_vault/data/services/shoe_service/shoe_service.dart';
import 'package:shoe_vault/data/services/shoe_service/shoe_service_impl.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<AppRouter>(AppRouter());

  locator.registerLazySingleton<ShoeService>(ShoeServiceImpl.new);
}
