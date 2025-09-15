part of 'user_bloc.dart';

/// Base class for User states
abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object?> get props => [];
}

/// Initial state
class UserInitial extends UserState {}

/// Loading state
class UserLoading extends UserState {}

/// Loaded state with users
class UserLoaded extends UserState {
  const UserLoaded(this.users);

  final List<User> users;

  @override
  List<Object?> get props => [users];
}

/// Error state
class UserError extends UserState {
  const UserError(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}