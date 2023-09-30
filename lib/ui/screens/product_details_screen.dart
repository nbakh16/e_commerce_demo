import 'package:e_commerce_demo/ui/screens/widgets/custom_appbar.dart';
import 'package:e_commerce_demo/ui/screens/widgets/product/product_image_slider.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Product Details'),
      body: Column(
        children: [
          ProductImageSlider()
        ],
      ),
    );
  }
}
