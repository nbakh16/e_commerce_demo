import 'dart:async';
import 'package:get/get.dart';

class OTPVerificationController extends GetxController {
  RxInt countdown = 120.obs;

  @override
  void onInit() {
    startCountdown();
    super.onInit();
  }

  void startCountdown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (countdown.value > 0) {
        countdown.value--;
      } else {
        timer.cancel();
      }
    });
  }
}
