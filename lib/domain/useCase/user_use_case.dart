import 'package:GetXExample/data/user_repository_impl.dart';
import 'package:GetXExample/domain/response/UserResponse.dart';

class UserUseCase {
  final repository = UserRepositoryImpl();

  Future<List<UserResponse>> getUsers(int page) async {
    return repository.getUsers(page);
  }
}
