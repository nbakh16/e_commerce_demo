import 'package:e_commerce_demo/ui/screens/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
