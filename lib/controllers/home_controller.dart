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

  Future<void> deleteTip(int index) async {
    // Add your delete tip logic here
  }

  Future<void> updateTip(int index) async {
    // Add your update tip logic here
  }
}
