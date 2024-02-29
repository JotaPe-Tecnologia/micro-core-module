import 'package:flutter/material.dart';

import '../entities/app_route.dart';

/// The callback function to buid a page.
typedef ModuleRouteBuilder = Widget Function(BuildContext, RouteArguments);

/// The List of routes for a module.
typedef AppModuleRoutes = List<AppRoute>;

/// The arguments for a route.
typedef RouteArguments = Map<String, dynamic>?;
