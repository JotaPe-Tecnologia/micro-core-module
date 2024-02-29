import 'package:micro_core_module/micro_core_module.dart';

final class AboutDependencies implements AppModuleDependency {
  @override
  void registerDatasources() {
    print('[ DATASOURCES ] Registering About datasources...');
  }

  @override
  void registerExternals() {
    print('[ EXTERNALS ] Registering About externals...');
  }

  @override
  void registerRepositories() {
    print('[ REPOSITORIES ] Registering About repositories...');
  }

  @override
  void registerStores() {
    print('[ STORES ] Registering About stores...');
  }

  @override
  void registerUsecases() {
    print('[ USECASES ] Registering About usecases...');
  }
}
