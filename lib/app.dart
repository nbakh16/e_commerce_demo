import 'package:e_commerce_demo/ui/controllers/controller_binding.dart';
import 'package:e_commerce_demo/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "E-Commerce",
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      initialBinding: ControllerBinding(),
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 14.0),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
          ),
          hintStyle: TextStyle(color: Colors.grey),
          prefixIconColor: Colors.grey,
          suffixIconColor: Colors.grey,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              textStyle: const TextStyle(
                  fontSize: 18,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)
              )
          ),
        )
      ),
    );
  }
}
