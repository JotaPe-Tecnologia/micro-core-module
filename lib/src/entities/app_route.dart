import '../types/types.dart';

/// Class that represents a route in the application.
final class AppRoute {
  /// The path of the route.
  ///
  /// Rules:
  ///
  /// - Should be unique.
  /// - Should always start with a `/`.
  ///
  /// Example: `'/home'`.
  final String path;

  /// The builder function to build the Widget Page.
  ///
  /// The builder function should return a `Widget` and accept two parameters:
  ///
  /// - `BuildContext` context
  /// - `Object?` arguments
  ///
  /// Example:
  ///
  /// ```dart
  /// (context, arguments) => const Scaffold(
  ///   body: Center(
  ///     child: Text('Home Page'),
  ///   ),
  /// );
  /// ```
  final ModuleRouteBuilder builder;

  const AppRoute(this.path, this.builder);
}
