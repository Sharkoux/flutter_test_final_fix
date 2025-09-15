import 'package:dartz/dartz.dart';
import '../../../core/errors/failures.dart';
import '../entities/task.dart';

/// Repository interface for Task
abstract class TaskRepository {
  /// Get all tasks
  Future<Either<Failure, List<Task>>> getTasks();

  /// Get task by id
  Future<Either<Failure, Task>> getTask(String id);

  /// Create new task
  Future<Either<Failure, Task>> createTask(Task task);

  /// Update task
  Future<Either<Failure, Task>> updateTask(Task task);

  /// Delete task
  Future<Either<Failure, void>> deleteTask(String id);
}