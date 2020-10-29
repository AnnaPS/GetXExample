import 'package:flutter/material.dart' show required;

class UserResponse {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  UserResponse(
      {@required this.id,
      @required this.email,
      @required this.firstName,
      @required this.lastName,
      @required this.avatar});

  static UserResponse fromJson(Map<String, dynamic> json) {
    return UserResponse(
        id: json['id'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        avatar: json['avatar']);
  }
}
