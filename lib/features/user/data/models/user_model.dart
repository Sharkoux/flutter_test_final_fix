import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// User model extending the domain entity with serialization capabilities
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required DateTime createdAt,
    required DateTime? updatedAt,
    required String name,
    required String email,
    required String? avatar,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

/// Extension to convert model to entity
extension UserModelX on UserModel {
  User toEntity() {
    return User(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      name: name,
      email: email,
      avatar: avatar,
    );
  }
}

/// Extension to convert entity to model
extension UserX on User {
  UserModel toModel() {
    return UserModel(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      name: name,
      email: email,
      avatar: avatar,
    );
  }
}