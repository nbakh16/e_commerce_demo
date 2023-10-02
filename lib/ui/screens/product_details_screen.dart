import 'package:e_commerce_demo/ui/screens/widgets/product/add_to_cart_with_price.dart';
import 'package:e_commerce_demo/ui/screens/widgets/product/product_colors_list.dart';
import 'package:e_commerce_demo/ui/screens/widgets/product/product_description_text.dart';
import 'package:e_commerce_demo/ui/screens/widgets/product/product_image_slider.dart';
import 'package:e_commerce_demo/ui/screens/widgets/product/product_name_and_counter.dart';
import 'package:e_commerce_demo/ui/screens/widgets/product/product_rating_and_review.dart';
import 'package:e_commerce_demo/ui/screens/widgets/product/product_sizes_list.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const ProductImageSlider(),
              AppBar(
                title: const Text('Product Details'),
                leading: const BackButton(
                  color: Colors.white,
                ),
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
            ],
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductNameAndCounter(),
                    ProductRatingAndReview(),
                    ProductColorsList(),
                    ProductSizesList(),
                    ProductDescriptionText(),
                  ],
                ),
              ),
            ),
          ),
          const AddToCartWithPrice()
        ],
      ),
    );
  }
}

