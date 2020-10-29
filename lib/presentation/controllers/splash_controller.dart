import 'package:GetXExample/presentation/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(HomePage(), transition: Transition.zoom);
    });
    super.onReady();
  }

  @override
  void onClose() {
    print(
        'in this site we should close stuff like video controller, streams, etc');
    super.onClose();
  }
}
