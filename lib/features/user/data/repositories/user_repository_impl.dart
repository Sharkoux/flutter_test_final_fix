import 'package:dartz/dartz.dart';
import '../../../core/errors/failures.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../models/user_model.dart';

/// Repository implementation for User
class UserRepositoryImpl implements UserRepository {
  // TODO: Add data sources (local/remote)

  @override
  Future<Either<Failure, List<User>>> getUsers() async {
    try {
      // TODO: Implement actual data fetching
      final List<UserModel> models = [];
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      return const Left(ServerFailure('Failed to get users'));
    }
  }

  @override
  Future<Either<Failure, User>> getUser(String id) async {
    try {
      // TODO: Implement actual data fetching
      throw UnimplementedError('getUser not implemented yet');
    } catch (e) {
      return const Left(ServerFailure('Failed to get user'));
    }
  }

  @override
  Future<Either<Failure, User>> createUser(User user) async {
    try {
      // TODO: Implement actual data creation
      return Right(user);
    } catch (e) {
      return const Left(ServerFailure('Failed to create user'));
    }
  }

  @override
  Future<Either<Failure, User>> updateUser(User user) async {
    try {
      // TODO: Implement actual data update
      return Right(user);
    } catch (e) {
      return const Left(ServerFailure('Failed to update user'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteUser(String id) async {
    try {
      // TODO: Implement actual data deletion
      return const Right(null);
    } catch (e) {
      return const Left(ServerFailure('Failed to delete user'));
    }
  }
}