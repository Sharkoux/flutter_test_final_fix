import 'package:dartz/dartz.dart';
import '../../../core/errors/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/task.dart';
import '../repositories/task_repository.dart';

/// Use case for delete Task
class DeleteTask implements UseCase<Task, DeleteTaskParams> {
  const DeleteTask(this.repository);

  final TaskRepository repository;

  @override
  Future<Either<Failure, Task>> call(DeleteTaskParams params) async {
    return await repository.deleteTask(params.task);
  }
}

/// Parameters for DeleteTask use case
class DeleteTaskParams {
  const DeleteTaskParams({required this.task});

  final Task task;
}