import 'package:micro_core_module/micro_core_module.dart';

import 'home_dependencies.dart';
import 'home_routes.dart';

final class HomeModule extends AppModule {
  @override
  List<AppModuleDependency> get moduleDependencies => [
        HomeDependencies(),
      ];

  @override
  List<AppModuleRoute> get moduleRoutes => [
        HomeRoutes(),
      ];
}
