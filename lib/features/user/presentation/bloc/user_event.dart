part of 'user_bloc.dart';

/// Base class for User events
abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object?> get props => [];
}

/// Event to load all users
class LoadUsers extends UserEvent {
  const LoadUsers();
}

/// Event to add a new user
class AddUser extends UserEvent {
  const AddUser(this.user);

  final User user;

  @override
  List<Object?> get props => [user];
}

/// Event to update a user
class UpdateUser extends UserEvent {
  const UpdateUser(this.user);

  final User user;

  @override
  List<Object?> get props => [user];
}

/// Event to delete a user
class DeleteUser extends UserEvent {
  const DeleteUser(this.userId);

  final String userId;

  @override
  List<Object?> get props => [userId];
}