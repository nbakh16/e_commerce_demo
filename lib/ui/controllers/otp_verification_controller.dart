import 'dart:async';
import 'package:get/get.dart';

class OTPVerificationController extends GetxController {
  final RxInt _totalTimeInSecond = 120.obs;

  RxInt get totalTimeInSecond => _totalTimeInSecond;


  @override
  void onInit() {
    startCountdown();
    super.onInit();
  }

  void startCountdown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_totalTimeInSecond.value > 0) {
        _totalTimeInSecond.value--;
      } else {
        timer.cancel();
      }
    });
  }
}
