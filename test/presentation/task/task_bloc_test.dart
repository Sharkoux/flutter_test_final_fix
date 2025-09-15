import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:test-final-fix/domain/entities/task.dart';
import 'package:test-final-fix/domain/repositories/task_repository.dart';
import 'package:test-final-fix/presentation/task/task_bloc.dart';

class MockTaskRepository extends Mock implements TaskRepository {}

void main() {
  group('TaskBloc', () {
    late TaskBloc taskBloc;
    late MockTaskRepository mockTaskRepository;

    setUp(() {
      mockTaskRepository = MockTaskRepository();
      taskBloc = TaskBloc(mockTaskRepository);
    });

    test('initial state is TaskInitial', () {
      expect(taskBloc.state, equals(TaskInitial()));
    });

    blocTest<TaskBloc, TaskState>(
      'emits [TaskLoading, TaskLoaded] when LoadTasks is added',
      build: () {
        when(mockTaskRepository.getAll()).thenAnswer(
          (_) async => [
            Task(id: 'test', createdAt: DateTime.now()),
          ],
        );
        return taskBloc;
      },
      act: (bloc) => bloc.add(LoadTasks()),
      expect: () => [
        TaskLoading(),
        isA<TaskLoaded>(),
      ],
      verify: (_) {
        verify(mockTaskRepository.getAll()).called(1);
      },
    );
  });
}