import 'package:dartz/dartz.dart';
import '../../../core/errors/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

/// Use case for create User
class CreateUser implements UseCase<User, CreateUserParams> {
  const CreateUser(this.repository);

  final UserRepository repository;

  @override
  Future<Either<Failure, User>> call(CreateUserParams params) async {
    return await repository.createUser(params.user);
  }
}

/// Parameters for CreateUser use case
class CreateUserParams {
  const CreateUserParams({required this.user});

  final User user;
}