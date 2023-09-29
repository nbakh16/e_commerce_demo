import 'package:e_commerce_demo/ui/screens/widgets/custom_appbar.dart';
import 'package:e_commerce_demo/ui/screens/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/bottom_nav_controller.dart';

class WishScreen extends StatelessWidget {
  const WishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.find<BottomNavController>().backToHome();
        return false;
      },
      child: Scaffold(
        appBar: const CustomAppbar(title: 'Wishlist',),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10.0,
              ),
              itemCount: 18,
              itemBuilder: (context, index) {
                return const ProductCard();
              }
          ),
        ),
      ),
    );
  }
}
