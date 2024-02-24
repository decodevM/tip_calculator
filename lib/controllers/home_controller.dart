import 'package:get/get.dart';

import '/views/manage_new_tip.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  Future<void> _getTips() async {
    // Add your get tips logic here
  }

  Future<void> addTip() async {
    Get.to(() => ManageTip());
  }

  void showTip(int index) {
    Get.to(() => ManageTip(), arguments: {});
    // Add your show tip logic here
  }
}
