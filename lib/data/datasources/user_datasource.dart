import 'package:dio/dio.dart';
import '../models/user_model.dart';

abstract class UserDataSource {
  Future<List<UserModel>> getAll();
  Future<UserModel> getById(String id);
  Future<UserModel> create(UserModel user);
  Future<UserModel> update(String id, UserModel user);
  Future<void> delete(String id);
}

class UserDataSourceImpl implements UserDataSource {
  final Dio dio;

  UserDataSourceImpl(this.dio);

  @override
  Future<List<UserModel>> getAll() async {
    // Simulation d'API - à remplacer par vraie API
    await Future.delayed(const Duration(milliseconds: 500));
    return [
      UserModel(
        id: 'sample-id',
        createdAt: DateTime.now(),
      ),
    ];
  }

  @override
  Future<UserModel> getById(String id) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return UserModel(
      id: id,
      createdAt: DateTime.now(),
    );
  }

  @override
  Future<UserModel> create(UserModel user) async {
    await Future.delayed(const Duration(milliseconds: 800));
    return user.copyWith(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      createdAt: DateTime.now(),
    );
  }

  @override
  Future<UserModel> update(String id, UserModel user) async {
    await Future.delayed(const Duration(milliseconds: 600));
    return user.copyWith(
      id: id,
      updatedAt: DateTime.now(),
    );
  }

  @override
  Future<void> delete(String id) async {
    await Future.delayed(const Duration(milliseconds: 400));
  }
}