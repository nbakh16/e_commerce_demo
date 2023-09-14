import 'package:e_commerce_demo/ui/screens/widgets/product_card.dart';
import 'package:flutter/material.dart';

class WishScreen extends StatelessWidget {
  const WishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
