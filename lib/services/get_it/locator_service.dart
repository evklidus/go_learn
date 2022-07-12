import 'package:get_it/get_it.dart';
import 'package:golearn/features/course/data/datasources/course_remote_data_source.dart';
import 'package:golearn/features/course/data/repositories/course_repository_impl.dart';
import 'package:golearn/features/course/domain/repositories/course_repository.dart';
import 'package:golearn/features/course/domain/usecases/get_course.dart';
import 'package:golearn/features/course/presentation/store/course_store.dart';
import 'package:golearn/features/home/data/datasources/home_remote_data_source.dart';
import 'package:golearn/features/home/data/repositories/home_repository_impl.dart';
import 'package:golearn/features/home/domain/repositories/home_repository.dart';
import 'package:golearn/features/home/domain/usecases/get_home_data.dart';
import 'package:golearn/features/home/presentation/store/home_store.dart';
import 'package:golearn/services/http/network_info.dart';
import 'package:golearn/services/http/rest_client.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:dio/dio.dart';

final getIt = GetIt.instance;

void setup() {
  // MobX
  getIt.registerFactory(() => HomeStore(getIt()));
  getIt.registerFactory(() => CourseStore(getIt()));

  // Use Cases
  getIt.registerLazySingleton(
    () => GetHomeData(getIt()),
  );
  getIt.registerLazySingleton(
    () => GetCourse(getIt()),
  );

  // Repositories
  getIt.registerFactory<HomeRepository>(
    () => HomeRepositoryImpl(
      remoteDataSource: getIt(),
      networkInfo: getIt(),
    ),
  );
  getIt.registerFactory<CourseRepository>(
    () => CourseRepositoryImpl(
      remoteDataSource: getIt(),
      networkInfo: getIt(),
    ),
  );

  // Data Sources
  getIt.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(getIt()),
  );
  getIt.registerLazySingleton<CourseRemoteDataSource>(
    () => CourseRemoteDataSourceImpl(getIt()),
  );

  getIt.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImp(getIt()),
  );

  final dio = Dio();
  final client = RestClient(dio);
  getIt.registerLazySingleton(() => client);
  getIt.registerLazySingleton(() => InternetConnectionChecker());
}
