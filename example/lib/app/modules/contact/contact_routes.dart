import 'package:example/app/core/app_routes.dart';
import 'package:micro_core_module/micro_core_module.dart';

import 'contact_page.dart';

final class ContactRoutes extends AppModuleRoute {
  @override
  AppModuleRoutes get routes => [
        AppRoute(
          AppRoutes.contact,
          (context, arguments) => ContactPage(
            age: arguments!['age'] as int,
          ),
        ),
      ];
}
