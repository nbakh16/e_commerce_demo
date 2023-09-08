import 'package:get/get.dart';

import 'otp_verification_controller.dart';

class ControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(OTPVerificationController());
  }
}