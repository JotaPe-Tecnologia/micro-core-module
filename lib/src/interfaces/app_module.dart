import 'package:micro_core_module/micro_core_module.dart';

/// Class that represents a module.
///
/// A module is a collection of routes and dependencies.
abstract interface class AppModule {
  /// Method that should return the list of dependencies of the module.
  List<AppModuleDependency> get moduleDependencies;

  /// Method that should return the list of routes of the module.
  List<AppModuleRoute> get moduleRoutes;
}
