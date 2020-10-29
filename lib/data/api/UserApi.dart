// Singleton class for connect an api rest
import 'package:GetXExample/domain/response/UserResponse.dart';
import 'package:dio/dio.dart';

class UserApi {
  // constructor privado
  UserApi._internal();
  static UserApi _instance = UserApi._internal();
  //devuelve la instancia
  static UserApi get instance => _instance;
  static Dio _dio = Dio();
  static Dio get dio => _dio;
}
