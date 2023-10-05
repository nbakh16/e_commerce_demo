import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget{
  // CustomAppbar({super.key, required this.title, this.onTapBack});

  CustomAppbar({Key? key, required this.title, void Function()? onTapBack})
      : onTapBack = onTapBack ?? Get.back,
        super(key: key);

  final String title;
  final void Function()? onTapBack;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      elevation: 2,
      leading: IconButton(
        onPressed: onTapBack,
        icon: const Icon(Icons.arrow_back),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
