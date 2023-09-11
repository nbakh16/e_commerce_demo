import 'package:e_commerce_demo/ui/screens/cart_screen.dart';
import 'package:e_commerce_demo/ui/screens/category_screen.dart';
import 'package:e_commerce_demo/ui/screens/home_screen.dart';
import 'package:e_commerce_demo/ui/screens/widgets/circular_icon_button.dart';
import 'package:e_commerce_demo/ui/screens/wish_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/image_assets.dart';

class BottomNavBase extends StatefulWidget {
  const BottomNavBase({super.key});

  @override
  State<BottomNavBase> createState() => _BottomNavBaseState();
}

class _BottomNavBaseState extends State<BottomNavBase> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
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
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: const [
          HomeScreen(),
          CategoryScreen(),
          CartScreen(),
          WishScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category_outlined), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard_outlined), label: 'Wish'),
        ],
      ),
    );
  }
}
