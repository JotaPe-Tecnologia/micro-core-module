import 'package:micro_core_module/micro_core_module.dart';

import 'about_dependencies.dart';
import 'about_routes.dart';

final class AboutModule extends AppModule {
  @override
  List<AppModuleDependency> get moduleDependencies => [
        AboutDependencies(),
      ];

  @override
  List<AppModuleRoute> get moduleRoutes => [
        AboutRoutes(),
      ];
}
