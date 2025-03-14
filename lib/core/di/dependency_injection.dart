import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:quote_generator_mobile_app/core/networking/api_service.dart';
import 'package:quote_generator_mobile_app/core/networking/dio_factory.dart';
import 'package:quote_generator_mobile_app/features/home/data/repos/home_repo.dart';
import 'package:quote_generator_mobile_app/features/home/logic/home_cubit.dart';

final getIt = GetIt.instance;

/// Dependency Injection
void setupDi() {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  // api
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // home
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt<ApiService>()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt<HomeRepo>()));
}