import 'package:dartz/dartz.dart';
import '../../../core/errors/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/task.dart';
import '../repositories/task_repository.dart';

/// Use case for get Task
class GetTask implements UseCase<Task, GetTaskParams> {
  const GetTask(this.repository);

  final TaskRepository repository;

  @override
  Future<Either<Failure, Task>> call(GetTaskParams params) async {
    return await repository.getTask(params.task);
  }
}

/// Parameters for GetTask use case
class GetTaskParams {
  const GetTaskParams({required this.task});

  final Task task;
}