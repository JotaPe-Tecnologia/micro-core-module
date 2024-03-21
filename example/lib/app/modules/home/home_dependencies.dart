import 'package:micro_core_module/micro_core_module.dart';

final class HomeDependencies implements AppModuleDependency {
  @override
  void registerDependencies() {
    print('[ DATASOURCES ] Registering Home datasources...');
  }
}
