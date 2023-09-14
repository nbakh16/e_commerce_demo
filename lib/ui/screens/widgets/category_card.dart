import 'package:e_commerce_demo/ui/utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: mainColor.shade50,
                borderRadius: BorderRadius.circular(8)),
            child: const Icon(
              Icons.shop,
              size: 32,
              color: mainColor,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Electronics',
            style: TextStyle(
                fontSize: 15,
                letterSpacing: 0.4),
          )
        ],
      ),
    );
  }
}
