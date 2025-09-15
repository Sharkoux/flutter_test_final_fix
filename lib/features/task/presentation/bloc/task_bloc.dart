import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../domain/entities/task.dart';
import '../../../domain/usecases/get_task.dart';

part 'task_event.dart';
part 'task_state.dart';

/// BLoC for managing Task state
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc({
    required this.getTasks,
  }) : super(TaskInitial()) {
    on<LoadTasks>(_onLoadTasks);
    on<AddTask>(_onAddTask);
    on<UpdateTask>(_onUpdateTask);
    on<DeleteTask>(_onDeleteTask);
  }

  final GetTasks getTasks;

  Future<void> _onLoadTasks(
    LoadTasks event,
    Emitter<TaskState> emit,
  ) async {
    emit(TaskLoading());

    final result = await getTasks(NoParams());
    result.fold(
      (failure) => emit(TaskError(failure.message)),
      (tasks) => emit(TaskLoaded(tasks)),
    );
  }

  Future<void> _onAddTask(
    AddTask event,
    Emitter<TaskState> emit,
  ) async {
    // TODO: Implement add task
  }

  Future<void> _onUpdateTask(
    UpdateTask event,
    Emitter<TaskState> emit,
  ) async {
    // TODO: Implement update task
  }

  Future<void> _onDeleteTask(
    DeleteTask event,
    Emitter<TaskState> emit,
  ) async {
    // TODO: Implement delete task
  }
}