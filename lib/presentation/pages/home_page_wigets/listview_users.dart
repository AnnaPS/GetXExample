import 'package:GetXExample/presentation/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListViewUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'users',
      builder: (controller) {
        return controller.loading
            ? Center(child: LinearProgressIndicator())
            : ListView.builder(
                itemCount: controller.users.length,
                itemBuilder: (context, index) {
                  final user = controller.users[index];
                  return ListTile(
                    title: Text(user.firstName),
                    subtitle: Text(user.email),
                  );
                },
              );
      },
    );
  }
}
