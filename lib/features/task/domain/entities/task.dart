import 'package:equatable/equatable.dart';

/// Task entity representing a task in the domain layer
class Task extends Equatable {
  const Task({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.title,
    required this.description,
    required this.isCompleted,
    required this.dueDate,
  });

  /// Unique identifier
  final String id;

  /// Creation timestamp
  final DateTime createdAt;

  /// Last update timestamp
  final DateTime? updatedAt;

  /// Task title
  final String title;

  /// Task description
  final String? description;

  /// Completion status
  final bool isCompleted;

  /// Due date
  final DateTime? dueDate;

  @override
  List<Object?> get props => [
    id,
    createdAt,
    updatedAt,
    title,
    description,
    isCompleted,
    dueDate,
  ];

  @override
  String toString() {
    return 'Task('
      'id: $id, '
      'createdAt: $createdAt, '
      'updatedAt: $updatedAt, '
      'title: $title, '
      'description: $description, '
      'isCompleted: $isCompleted, '
      'dueDate: $dueDate, '
    ')';
  }
}