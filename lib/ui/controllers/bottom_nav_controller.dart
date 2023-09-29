import 'package:get/get.dart';

class BottomNavController extends GetxController{
  int currentSelectedIndex = 0;

  void changeScreen(int index) {
    currentSelectedIndex = index;
    update();
  }

  void backToHome() {
    changeScreen(0);
  }
}