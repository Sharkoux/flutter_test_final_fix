import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import '../domain/repositories/user_repository.dart';
import '../data/repositories/user_repository_impl.dart';
import '../data/datasources/user_datasource.dart';
import '../presentation/user/user_bloc.dart';
import '../domain/repositories/task_repository.dart';
import '../data/repositories/task_repository_impl.dart';
import '../data/datasources/task_datasource.dart';
import '../presentation/task/task_bloc.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> initializeDependencies() async {
  // HTTP Client
  serviceLocator.registerLazySingleton<Dio>(() => Dio());

  // Data Sources
  serviceLocator.registerLazySingleton<UserDataSource>(
    () => UserDataSourceImpl(serviceLocator()),
  );
  serviceLocator.registerLazySingleton<TaskDataSource>(
    () => TaskDataSourceImpl(serviceLocator()),
  );

  // Repositories
  serviceLocator.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(serviceLocator()),
  );
  serviceLocator.registerLazySingleton<TaskRepository>(
    () => TaskRepositoryImpl(serviceLocator()),
  );

  // BLoCs
  serviceLocator.registerFactory(() => UserBloc(serviceLocator()));
  serviceLocator.registerFactory(() => TaskBloc(serviceLocator()));
}