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
                color: Colors.blueAccent.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8)),
            child: const Icon(
              Icons.shop,
              size: 32,
              color: Colors.blueAccent,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Electronics',
            style: TextStyle(
                fontSize: 15,
                color: Colors.blueAccent,
                letterSpacing: 0.4),
          )
        ],
      ),
    );
  }
}
