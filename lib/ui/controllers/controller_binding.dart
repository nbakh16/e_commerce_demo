import 'package:e_commerce_demo/ui/controllers/splash_controller.dart';
import 'package:get/get.dart';

import 'otp_verification_controller.dart';

class ControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> OTPVerificationController());
    Get.put(SplashController());
  }
}