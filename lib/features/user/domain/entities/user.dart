import 'package:equatable/equatable.dart';

/// User entity representing a user in the domain layer
class User extends Equatable {
  const User({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.email,
    required this.avatar,
  });

  /// Unique identifier
  final String id;

  /// Creation timestamp
  final DateTime createdAt;

  /// Last update timestamp
  final DateTime? updatedAt;

  /// User full name
  final String name;

  /// User email address
  final String email;

  /// Avatar URL
  final String? avatar;

  @override
  List<Object?> get props => [
    id,
    createdAt,
    updatedAt,
    name,
    email,
    avatar,
  ];

  @override
  String toString() {
    return 'User('
      'id: $id, '
      'createdAt: $createdAt, '
      'updatedAt: $updatedAt, '
      'name: $name, '
      'email: $email, '
      'avatar: $avatar, '
    ')';
  }
}