/// Class that handles the dependency injection of the module.
///
/// This class should be implemented by the module dependency class and its methods
/// should be overriden to handle the registration of datasources, externals,
/// repositories, stores and usecases.
abstract interface class AppModuleDependency {
  /// Method that should handle the registration of datasources.
  void registerDatasources();

  /// Method that should handle the registration of externals.
  void registerExternals();

  /// Method that should handle the registration of repositories.
  void registerRepositories();

  /// Method that should handle the registration of stores.
  void registerStores();

  /// Method that should handle the registration of usecases.
  void registerUsecases();
}
