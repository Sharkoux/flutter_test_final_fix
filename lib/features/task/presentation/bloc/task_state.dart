part of 'task_bloc.dart';

/// Base class for Task states
abstract class TaskState extends Equatable {
  const TaskState();

  @override
  List<Object?> get props => [];
}

/// Initial state
class TaskInitial extends TaskState {}

/// Loading state
class TaskLoading extends TaskState {}

/// Loaded state with tasks
class TaskLoaded extends TaskState {
  const TaskLoaded(this.tasks);

  final List<Task> tasks;

  @override
  List<Object?> get props => [tasks];
}

/// Error state
class TaskError extends TaskState {
  const TaskError(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}