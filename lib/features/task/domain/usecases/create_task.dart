import 'package:dartz/dartz.dart';
import '../../../core/errors/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/task.dart';
import '../repositories/task_repository.dart';

/// Use case for create Task
class CreateTask implements UseCase<Task, CreateTaskParams> {
  const CreateTask(this.repository);

  final TaskRepository repository;

  @override
  Future<Either<Failure, Task>> call(CreateTaskParams params) async {
    return await repository.createTask(params.task);
  }
}

/// Parameters for CreateTask use case
class CreateTaskParams {
  const CreateTaskParams({required this.task});

  final Task task;
}