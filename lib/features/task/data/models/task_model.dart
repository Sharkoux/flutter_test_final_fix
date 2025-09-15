import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/task.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

/// Task model extending the domain entity with serialization capabilities
@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    required String id,
    required DateTime createdAt,
    required DateTime? updatedAt,
    required String title,
    required String? description,
    required bool isCompleted,
    required DateTime? dueDate,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) => _$TaskModelFromJson(json);
}

/// Extension to convert model to entity
extension TaskModelX on TaskModel {
  Task toEntity() {
    return Task(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      title: title,
      description: description,
      isCompleted: isCompleted,
      dueDate: dueDate,
    );
  }
}

/// Extension to convert entity to model
extension TaskX on Task {
  TaskModel toModel() {
    return TaskModel(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      title: title,
      description: description,
      isCompleted: isCompleted,
      dueDate: dueDate,
    );
  }
}