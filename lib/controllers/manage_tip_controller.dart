import 'package:get/get.dart';

class ManageTipController extends GetxController {
  bool isUpdate = false;
  @override
  void onInit() {
    Map<dynamic, dynamic>? data = Get.arguments;
    if (data != null) {
      isUpdate = true;
    }
    super.onInit();
  }

  void addTip() {
    // Add your add tip logic here
  }

  void updateTip() {
    // Add your update tip logic here
  }

  void deleteTip() {
    // Add your delete tip logic here
  }

  void onUpdateTip(double value) {}

  String? validateTitle(String? value) {}

  String? validateAmount(String? value) {}
}
