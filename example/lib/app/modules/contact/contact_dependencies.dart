import 'package:micro_core_module/micro_core_module.dart';

final class ContactDependencies implements AppModuleDependency {
  @override
  void registerDependencies() {
    print('[ DATASOURCES ] Registering Contact datasources...');
  }
}
