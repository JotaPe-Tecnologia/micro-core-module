import 'package:micro_core_module/micro_core_module.dart';

import 'contact_dependencies.dart';
import 'contact_routes.dart';

final class ContactModule implements AppModule {
  @override
  List<AppModuleDependency> get moduleDependencies => [
        ContactDependencies(),
      ];

  @override
  List<AppModuleRoute> get moduleRoutes => [
        ContactRoutes(),
      ];
}
