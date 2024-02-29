import 'package:example/app/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:micro_core_module/micro_core_module.dart';

import 'app/modules/about/about_module.dart';
import 'app/modules/contact/contact_module.dart';
import 'app/modules/home/home_module.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(App());
}

final class App extends StatelessWidget with MaterialAppModule {
  @override
  List<AppModule> get modules => [
        AboutModule(),
        ContactModule(),
        HomeModule(),
      ];

  App({super.key}) {
    loadModules();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Micro Core Module Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.home,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
