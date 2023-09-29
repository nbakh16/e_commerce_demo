import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/bottom_nav_controller.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppbar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      elevation: 2,
      leading: IconButton(
        onPressed: Get.find<BottomNavController>().backToHome,
        icon: const Icon(Icons.arrow_back),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
