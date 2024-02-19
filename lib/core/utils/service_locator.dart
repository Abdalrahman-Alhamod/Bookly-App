import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/Home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
