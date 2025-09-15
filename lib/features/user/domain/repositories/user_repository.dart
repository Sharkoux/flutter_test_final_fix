import 'package:dartz/dartz.dart';
import '../../../core/errors/failures.dart';
import '../entities/user.dart';

/// Repository interface for User
abstract class UserRepository {
  /// Get all users
  Future<Either<Failure, List<User>>> getUsers();

  /// Get user by id
  Future<Either<Failure, User>> getUser(String id);

  /// Create new user
  Future<Either<Failure, User>> createUser(User user);

  /// Update user
  Future<Either<Failure, User>> updateUser(User user);

  /// Delete user
  Future<Either<Failure, void>> deleteUser(String id);
}