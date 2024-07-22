import 'package:get_it/get_it.dart';
import 'package:karngea4u/core/language/bloc/localization_bloc.dart';

final serviceLocator = GetIt.instance;
Future<void> initDependencies() async {
  
  //* Bloc
  serviceLocator.registerLazySingleton(() => LocalizationBloc());
}

void _initLocatisa() {
  // serviceLocator
  //   ..registerFactory(() => ())
  //   ..registerFactory(() => ForgetPasswordController())
  //   ..registerFactory(() => ProfileController())
  //   ..registerFactory(() => ChangePaswordController());

  //* Bloc
  serviceLocator.registerLazySingleton(() => LocalizationBloc());
}
