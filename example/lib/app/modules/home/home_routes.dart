import 'package:example/app/core/app_routes.dart';
import 'package:micro_core_module/micro_core_module.dart';

import 'home_page.dart';

final class HomeRoutes implements AppModuleRoute {
  @override
  AppModuleRoutes get routes => [
        AppRoute(
          AppRoutes.home,
          (context, arguments) => const HomePage(),
        ),
      ];
}
