part of 'task_bloc.dart';

/// Base class for Task events
abstract class TaskEvent extends Equatable {
  const TaskEvent();

  @override
  List<Object?> get props => [];
}

/// Event to load all tasks
class LoadTasks extends TaskEvent {
  const LoadTasks();
}

/// Event to add a new task
class AddTask extends TaskEvent {
  const AddTask(this.task);

  final Task task;

  @override
  List<Object?> get props => [task];
}

/// Event to update a task
class UpdateTask extends TaskEvent {
  const UpdateTask(this.task);

  final Task task;

  @override
  List<Object?> get props => [task];
}

/// Event to delete a task
class DeleteTask extends TaskEvent {
  const DeleteTask(this.taskId);

  final String taskId;

  @override
  List<Object?> get props => [taskId];
}