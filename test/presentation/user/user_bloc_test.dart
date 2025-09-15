import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:test-final-fix/domain/entities/user.dart';
import 'package:test-final-fix/domain/repositories/user_repository.dart';
import 'package:test-final-fix/presentation/user/user_bloc.dart';

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  group('UserBloc', () {
    late UserBloc userBloc;
    late MockUserRepository mockUserRepository;

    setUp(() {
      mockUserRepository = MockUserRepository();
      userBloc = UserBloc(mockUserRepository);
    });

    test('initial state is UserInitial', () {
      expect(userBloc.state, equals(UserInitial()));
    });

    blocTest<UserBloc, UserState>(
      'emits [UserLoading, UserLoaded] when LoadUsers is added',
      build: () {
        when(mockUserRepository.getAll()).thenAnswer(
          (_) async => [
            User(id: 'test', createdAt: DateTime.now()),
          ],
        );
        return userBloc;
      },
      act: (bloc) => bloc.add(LoadUsers()),
      expect: () => [
        UserLoading(),
        isA<UserLoaded>(),
      ],
      verify: (_) {
        verify(mockUserRepository.getAll()).called(1);
      },
    );
  });
}