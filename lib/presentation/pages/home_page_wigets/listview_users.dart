import 'package:GetXExample/presentation/controllers/home_controller.dart';
import 'package:awesome_loader/awesome_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListViewUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'users',
      builder: (controller) {
        return controller.loading
            ? Container(
                color: Colors.grey.withOpacity(0.5),
                child: Center(
                  child: AwesomeLoader(
                    loaderType: AwesomeLoader.AwesomeLoader1,
                    color: Colors.orange,
                  ),
                ),
              )
            : ListView.builder(
                itemCount: controller.users.length,
                itemBuilder: (context, index) {
                  final user = controller.users[index];
                  return Container(
                    color: Colors.amber,
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 30),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black26, width: 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: Colors.green.shade600,
                            elevation: 8,
                            child: Container(
                              height: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 20),
                                    child: Row(
                                      children: [
                                        Text(
                                          user.firstName,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          user.lastName,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          user.email,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 30,
                            backgroundImage: NetworkImage(user.avatar),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
      },
    );
  }
}
