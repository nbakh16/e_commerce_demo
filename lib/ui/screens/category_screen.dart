import 'package:e_commerce_demo/ui/screens/widgets/category_card.dart';
import 'package:e_commerce_demo/ui/screens/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/bottom_nav_controller.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.find<BottomNavController>().backToHome();
        return false;
      },
      child: Scaffold(
        appBar: CustomAppbar(
          title: 'Categories',
          onTapBack: Get.find<BottomNavController>().backToHome
        ),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 16,
              ),
              itemCount: 18,
              itemBuilder: (context, index) {
                return const CategoryCard();
              }
          ),
        ),
      ),
    );
  }
}
