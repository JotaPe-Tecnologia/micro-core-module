import 'package:micro_core_module/micro_core_module.dart';

final class HomeDependencies implements AppModuleDependency {
  @override
  void registerDatasources() {
    print('[ DATASOURCES ] Registering Home datasources...');
  }

  @override
  void registerExternals() {
    print('[ EXTERNALS ] Registering Home externals...');
  }

  @override
  void registerRepositories() {
    print('[ REPOSITORIES ] Registering Home repositories...');
  }

  @override
  void registerStores() {
    print('[ STORES ] Registering Home stores...');
  }

  @override
  void registerUsecases() {
    print('[ USECASES ] Registering Home usecases...');
  }
}
