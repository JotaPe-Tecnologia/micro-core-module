import '../transitions/transitions.dart';
import '../types/types.dart';

/// Class that represents the arguments to be passed to a route.
final class AppRouteArguments {
  /// The data to be passed to the route.
  final RouteArguments data;

  /// The transition to be used when navigating to this route.
  final AppTransition transition;

  const AppRouteArguments({
    this.data,
    this.transition = const SlideLeftTransition(),
  });
}
