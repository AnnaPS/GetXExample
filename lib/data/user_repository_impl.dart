import 'package:GetXExample/data/api/UserApi.dart';
import 'package:GetXExample/domain/repository/user_repository_interface.dart';
import 'package:GetXExample/domain/response/UserResponse.dart';
import 'package:dio/dio.dart';

class UserRepositoryImpl extends UserRepositoryInterface {
  @override
  Future<List<UserResponse>> getUsers(int page) async {
    try {
      final Response response = await UserApi.dio.get(
          'https://reqres.in/api/users',
          queryParameters: {"page": page, 'delay': 3});

      return (response.data['data'] as List)
          .map((data) => UserResponse.fromJson(data))
          .toList();
    } catch (e) {
      print(e);
      return null;
    }
  }
}
