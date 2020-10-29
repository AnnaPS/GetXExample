import 'package:GetXExample/domain/response/UserResponse.dart';

abstract class UserRepositoryInterface {
  Future<List<UserResponse>> getUsers(int page);
}
