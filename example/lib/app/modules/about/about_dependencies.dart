import 'package:micro_core_module/micro_core_module.dart';

final class AboutDependencies extends AppModuleDependency {
  @override
  void registerDependencies() {
    print('[ DATASOURCES ] Registering About datasources...');
  }
}
