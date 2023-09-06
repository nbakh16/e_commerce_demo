import 'package:e_commerce_demo/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "E-Commerce",
      home: HomeScreen(),
    );
  }
}
