import 'package:dartz/dartz.dart';
import '../../../core/errors/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

/// Use case for delete User
class DeleteUser implements UseCase<User, DeleteUserParams> {
  const DeleteUser(this.repository);

  final UserRepository repository;

  @override
  Future<Either<Failure, User>> call(DeleteUserParams params) async {
    return await repository.deleteUser(params.user);
  }
}

/// Parameters for DeleteUser use case
class DeleteUserParams {
  const DeleteUserParams({required this.user});

  final User user;
}