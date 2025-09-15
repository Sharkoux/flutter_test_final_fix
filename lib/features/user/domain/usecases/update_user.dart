import 'package:dartz/dartz.dart';
import '../../../core/errors/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

/// Use case for update User
class UpdateUser implements UseCase<User, UpdateUserParams> {
  const UpdateUser(this.repository);

  final UserRepository repository;

  @override
  Future<Either<Failure, User>> call(UpdateUserParams params) async {
    return await repository.updateUser(params.user);
  }
}

/// Parameters for UpdateUser use case
class UpdateUserParams {
  const UpdateUserParams({required this.user});

  final User user;
}