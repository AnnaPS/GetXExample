import 'package:GetXExample/presentation/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page_wigets/listview_users.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            body: Center(
                // Creo otro getbuilder con un id para solo actualizar el widget
                //de text en vez de todo el home
                child: Container()),
          );
        });
  }
}
