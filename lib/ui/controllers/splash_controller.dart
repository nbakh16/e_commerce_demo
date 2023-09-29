import 'dart:async';
import 'package:get/get.dart';

import '../screens/bottom_nav_base.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    navigateToNextPage();
    super.onInit();
  }

  void navigateToNextPage() {
    Future.delayed(const Duration(seconds: 3)).then((value) async {
      Get.offAll(()=> const BottomNavBase(), transition: Transition.fadeIn);
    });
  }

}
