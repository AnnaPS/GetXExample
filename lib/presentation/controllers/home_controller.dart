import 'package:GetXExample/data/api/UserApi.dart';
import 'package:GetXExample/domain/response/UserResponse.dart';
import 'package:GetXExample/domain/useCase/user_use_case.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  final userUC = UserUseCase();
  int _counter = 0;
  int get counter => _counter;
  bool get loading => _loading;
  List<UserResponse> get users => _users;

  List<UserResponse> _users = [];
  bool _loading = true;

// Igual que el init state de un stateful widget
  @override
  void onInit() {
    super.onInit();
    print('on init controller');
  }

// se ejecuta una sola vez cuando el widget está renderizado
  @override
  void onReady() {
    super.onReady();
    print('on ready controller');
    loadUsers();
  }

  void increment() {
    this._counter++;
    update(['myId']);
  }

  Future<void> loadUsers() async {
    final data = await userUC.getUsers(1);
    this._users = data;
    this._loading = false;
    update(['users']);
  }
}
