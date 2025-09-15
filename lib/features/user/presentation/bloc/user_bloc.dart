import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/usecases/get_user.dart';

part 'user_event.dart';
part 'user_state.dart';

/// BLoC for managing User state
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({
    required this.getUsers,
  }) : super(UserInitial()) {
    on<LoadUsers>(_onLoadUsers);
    on<AddUser>(_onAddUser);
    on<UpdateUser>(_onUpdateUser);
    on<DeleteUser>(_onDeleteUser);
  }

  final GetUsers getUsers;

  Future<void> _onLoadUsers(
    LoadUsers event,
    Emitter<UserState> emit,
  ) async {
    emit(UserLoading());

    final result = await getUsers(NoParams());
    result.fold(
      (failure) => emit(UserError(failure.message)),
      (users) => emit(UserLoaded(users)),
    );
  }

  Future<void> _onAddUser(
    AddUser event,
    Emitter<UserState> emit,
  ) async {
    // TODO: Implement add user
  }

  Future<void> _onUpdateUser(
    UpdateUser event,
    Emitter<UserState> emit,
  ) async {
    // TODO: Implement update user
  }

  Future<void> _onDeleteUser(
    DeleteUser event,
    Emitter<UserState> emit,
  ) async {
    // TODO: Implement delete user
  }
}