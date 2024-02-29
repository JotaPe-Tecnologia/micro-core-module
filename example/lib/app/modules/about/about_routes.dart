import 'package:example/app/core/app_routes.dart';
import 'package:micro_core_module/micro_core_module.dart';

import 'about_page.dart';

final class AboutRoutes implements AppModuleRoute {
  @override
  AppModuleRoutes get routes => [
        AppRoute(
          AppRoutes.about,
          (context, arguments) => AboutPage(
            name: arguments!['name'] as String,
          ),
        ),
      ];
}
