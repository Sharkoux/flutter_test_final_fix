import 'package:get_it/get_it.dart';
import 'data/repositories/home_repository.dart';
import 'domain/use_cases/get_home_use_case.dart';
import 'domain/use_cases/save_home_use_case.dart';
import 'presentation/blocs/home_bloc.dart';
import 'data/repositories/addtask_repository.dart';
import 'domain/use_cases/get_addtask_use_case.dart';
import 'domain/use_cases/save_addtask_use_case.dart';
import 'presentation/blocs/addtask_bloc.dart';


final GetIt serviceLocator = GetIt.instance;

Future<void> configureDependencies() async {
  // Home dependencies
  serviceLocator.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl());
  serviceLocator.registerLazySingleton(() => GetHomeUseCase(serviceLocator()));
  serviceLocator.registerLazySingleton(() => SaveHomeUseCase(serviceLocator()));
  serviceLocator.registerFactory(() => HomeBloc(serviceLocator(), serviceLocator()));

  // AddTask dependencies
  serviceLocator.registerLazySingleton<AddTaskRepository>(() => AddTaskRepositoryImpl());
  serviceLocator.registerLazySingleton(() => GetAddTaskUseCase(serviceLocator()));
  serviceLocator.registerLazySingleton(() => SaveAddTaskUseCase(serviceLocator()));
  serviceLocator.registerFactory(() => AddTaskBloc(serviceLocator(), serviceLocator()));

}
