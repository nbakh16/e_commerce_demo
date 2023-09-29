import 'package:e_commerce_demo/ui/controllers/bottom_nav_controller.dart';
import 'package:e_commerce_demo/ui/screens/cart_screen.dart';
import 'package:e_commerce_demo/ui/screens/category_screen.dart';
import 'package:e_commerce_demo/ui/screens/home_screen.dart';
import 'package:e_commerce_demo/ui/screens/widgets/circular_icon_button.dart';
import 'package:e_commerce_demo/ui/screens/wish_screen.dart';
import 'package:e_commerce_demo/ui/utils/colors.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/image_assets.dart';

class BottomNavBase extends StatefulWidget {
  const BottomNavBase({super.key});

  @override
  State<BottomNavBase> createState() => _BottomNavBaseState();
}

class _BottomNavBaseState extends State<BottomNavBase> {
  final List<Widget> _screens = const [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    WishScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              children: [
                SvgPicture.asset(
                  ImageAssets.logoNavSVG,
                ),
                const Spacer(),
                CircularIconButton(
                  icon: Icons.person,
                  onTap: () {},
                ),
                const SizedBox(
                  width: 8,
                ),
                CircularIconButton(
                  icon: Icons.call,
                  onTap: () {},
                ),
                const SizedBox(
                  width: 8,
                ),
                CircularIconButton(
                  icon: Icons.notifications_none,
                  onTap: () {},
                ),
              ],
            ),
          ),
          body: _screens[controller.currentSelectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentSelectedIndex,
            onTap: controller.changeScreen,
            selectedItemColor: mainColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            elevation: 4,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.category_outlined), label: 'Categories'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Wishlist'),
            ],
          ),
        );
      }
    );
  }
}
