import 'package:dartz/dartz.dart';
import '../../../core/errors/failures.dart';
import '../../domain/entities/task.dart';
import '../../domain/repositories/task_repository.dart';
import '../models/task_model.dart';

/// Repository implementation for Task
class TaskRepositoryImpl implements TaskRepository {
  // TODO: Add data sources (local/remote)

  @override
  Future<Either<Failure, List<Task>>> getTasks() async {
    try {
      // TODO: Implement actual data fetching
      final List<TaskModel> models = [];
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      return const Left(ServerFailure('Failed to get tasks'));
    }
  }

  @override
  Future<Either<Failure, Task>> getTask(String id) async {
    try {
      // TODO: Implement actual data fetching
      throw UnimplementedError('getTask not implemented yet');
    } catch (e) {
      return const Left(ServerFailure('Failed to get task'));
    }
  }

  @override
  Future<Either<Failure, Task>> createTask(Task task) async {
    try {
      // TODO: Implement actual data creation
      return Right(task);
    } catch (e) {
      return const Left(ServerFailure('Failed to create task'));
    }
  }

  @override
  Future<Either<Failure, Task>> updateTask(Task task) async {
    try {
      // TODO: Implement actual data update
      return Right(task);
    } catch (e) {
      return const Left(ServerFailure('Failed to update task'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteTask(String id) async {
    try {
      // TODO: Implement actual data deletion
      return const Right(null);
    } catch (e) {
      return const Left(ServerFailure('Failed to delete task'));
    }
  }
}