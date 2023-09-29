import 'package:flutter/material.dart';

import '../category_card.dart';
import 'section_header.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: 'Categories',
          onTap: () {},
        ),
        const SizedBox(height: 8,),
        SizedBox(
          height: 100,
          child: ListView.builder(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const CategoryCard();
              }),
        ),
      ],
    );
  }
}
