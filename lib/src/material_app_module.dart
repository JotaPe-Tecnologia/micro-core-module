import 'package:flutter/material.dart';

import 'entities/app_route.dart';
import 'entities/app_route_arguments.dart';
import 'interfaces/app_module.dart';
import 'interfaces/app_module_dependency.dart';
import 'transitions/transitions.dart';

/// The mixin that provides the methods to load the modules of the application.
///
/// The [MaterialAppModule] mixin should be used in the `Widget` that returns the
/// [MaterialApp] `Widget`.
///
/// Example:
/// ```dart
/// class MyApp extends StatelessWidget with MaterialAppModule {
///   @override
///   List<AppModule> get modules => [
///     HomeModule(),
///     AboutModule(),
///   ];
///
///   @override
///   Widget build(BuildContext context) {
///     return MaterialApp(
///       title: 'My App',
///       onGenerateRoute: onGenerateRoute,
///     );
///   }
/// }
/// ```
mixin MaterialAppModule {
  /// The list of dependencies for all the modules of the application.
  final List<AppModuleDependency> _dependencies = [];

  /// Method that injects the dependencies of the modules.
  void _injectDependencies() {
    for (final dependency in _dependencies) {
      dependency.registerDependencies();
    }
  }

  /// Method that loads the modules of the application.
  ///
  /// The [loadDependencies] parameter is used to define if the dependencies of
  /// the modules should be loaded.
  ///
  /// The [loadRoutes] parameter is used to define if the routes of the modules
  /// should be loaded.
  void loadModules({bool loadDependencies = true, bool loadRoutes = true}) {
    for (final module in modules) {
      if (loadDependencies) {
        _dependencies.addAll(
          module.moduleDependencies,
        );
      }

      if (loadRoutes) {
        _routes.addAll(
          module.moduleRoutes.expand((mr) => mr.routes.map((r) => r)),
        );
      }
    }

    _injectDependencies();
  }

  /// The list of modules of the application.
  ///
  /// The modules are isolated parts of the application. Each module has its own
  /// dependencies and routes.
  ///
  /// This getter should be overriden to return the list of modules of the application.
  ///
  /// Example:
  /// ```dart
  /// @override
  /// List<AppModule> get modules => [
  ///   HomeModule(),
  ///   AboutModule(),
  /// ];
  /// ```
  List<AppModule> get modules => [];

  /// Method that returns the route generator of the application.
  ///
  /// This method should be used as the `onGenerateRoute` parameter of the `MaterialApp`.
  Route<Object>? onGenerateRoute(RouteSettings settings) {
    final routeArguments = settings.arguments;

    // Defining Transition
    AppTransition routeTransition = const SlideLeftTransition();
    if (routeArguments is AppRouteArguments) {
      routeTransition = routeArguments.transition;
    }

    for (final route in _routes) {
      if (route.path == settings.name) {
        return PageRouteBuilder(
          pageBuilder: (context, _, __) => route.builder(
            context,
            routeArguments is AppRouteArguments ? routeArguments.data : null,
          ),
          settings: settings,
          transitionDuration: routeTransition.transitionDuration,
          transitionsBuilder: routeTransition.transitionBuilder,
        );
      }
    }

    return null;
  }

  /// The list of routes for all the modules of the application.
  final List<AppRoute> _routes = [];
}
