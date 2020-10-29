import 'package:GetXExample/presentation/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'myId',
      builder: (controller) => Text(
        controller.counter.toString(),
      ),
    );
  }
}
