import 'package:micro_core_module/micro_core_module.dart';

final class ContactDependencies implements AppModuleDependency {
  @override
  void registerDatasources() {
    print('[ DATASOURCES ] Registering Contact datasources...');
  }

  @override
  void registerExternals() {
    print('[ EXTERNALS ] Registering Contact externals...');
  }

  @override
  void registerRepositories() {
    print('[ REPOSITORIES ] Registering Contact repositories...');
  }

  @override
  void registerStores() {
    print('[ STORES ] Registering Contact stores...');
  }

  @override
  void registerUsecases() {
    print('[ USECASES ] Registering Contact usecases...');
  }
}
