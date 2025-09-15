import 'package:dartz/dartz.dart';
import '../../../core/errors/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

/// Use case for get User
class GetUser implements UseCase<User, GetUserParams> {
  const GetUser(this.repository);

  final UserRepository repository;

  @override
  Future<Either<Failure, User>> call(GetUserParams params) async {
    return await repository.getUser(params.user);
  }
}

/// Parameters for GetUser use case
class GetUserParams {
  const GetUserParams({required this.user});

  final User user;
}