import 'dart:async';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<DateTime> dateTime = DateTime.now().obs;
  RxBool status = false.obs;

  @override
  void onInit() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      dateTime.value = DateTime.now();
    });
    super.onInit();
  }
}
