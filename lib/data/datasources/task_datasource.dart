import 'package:dio/dio.dart';
import '../models/task_model.dart';

abstract class TaskDataSource {
  Future<List<TaskModel>> getAll();
  Future<TaskModel> getById(String id);
  Future<TaskModel> create(TaskModel task);
  Future<TaskModel> update(String id, TaskModel task);
  Future<void> delete(String id);
}

class TaskDataSourceImpl implements TaskDataSource {
  final Dio dio;

  TaskDataSourceImpl(this.dio);

  @override
  Future<List<TaskModel>> getAll() async {
    // Simulation d'API - à remplacer par vraie API
    await Future.delayed(const Duration(milliseconds: 500));
    return [
      TaskModel(
        id: 'sample-id',
        createdAt: DateTime.now(),
      ),
    ];
  }

  @override
  Future<TaskModel> getById(String id) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return TaskModel(
      id: id,
      createdAt: DateTime.now(),
    );
  }

  @override
  Future<TaskModel> create(TaskModel task) async {
    await Future.delayed(const Duration(milliseconds: 800));
    return task.copyWith(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      createdAt: DateTime.now(),
    );
  }

  @override
  Future<TaskModel> update(String id, TaskModel task) async {
    await Future.delayed(const Duration(milliseconds: 600));
    return task.copyWith(
      id: id,
      updatedAt: DateTime.now(),
    );
  }

  @override
  Future<void> delete(String id) async {
    await Future.delayed(const Duration(milliseconds: 400));
  }
}