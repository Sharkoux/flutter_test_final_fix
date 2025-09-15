import 'package:dartz/dartz.dart';
import '../../../core/errors/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/task.dart';
import '../repositories/task_repository.dart';

/// Use case for update Task
class UpdateTask implements UseCase<Task, UpdateTaskParams> {
  const UpdateTask(this.repository);

  final TaskRepository repository;

  @override
  Future<Either<Failure, Task>> call(UpdateTaskParams params) async {
    return await repository.updateTask(params.task);
  }
}

/// Parameters for UpdateTask use case
class UpdateTaskParams {
  const UpdateTaskParams({required this.task});

  final Task task;
}