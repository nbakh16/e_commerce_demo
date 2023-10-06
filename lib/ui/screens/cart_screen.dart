import 'package:e_commerce_demo/ui/screens/widgets/cart/cart_product_card.dart';
import 'package:e_commerce_demo/ui/screens/widgets/custom_appbar.dart';
import 'package:e_commerce_demo/ui/screens/widgets/product/add_to_cart_with_price.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/bottom_nav_controller.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.find<BottomNavController>().backToHome();
        return false;
      },
      child: Scaffold(
        appBar: CustomAppbar(title: 'Cart',
          onTapBack: Get.find<BottomNavController>().backToHome),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return CartProductCard();
                  },
                ),
              ),
            ),
            AddToCartWithPrice(
              onTap: () {},
              buttonText: 'Checkout',
            )
          ],
        )
      ),
    );
  }
}
