import 'package:e_commerce_demo/ui/screens/widgets/home/section_header.dart';
import 'package:flutter/cupertino.dart';

import '../product/product_card.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key, required this.sectionTitle, required this.onTap});

  final String sectionTitle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16,),
        SectionHeader(
          title: sectionTitle,
          onTap: onTap,
        ),
        const SizedBox(height: 8,),
        SizedBox(
            height: 160,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 12,
              itemBuilder: (context, index) {
                return const AspectRatio(
                    aspectRatio: 1,
                    child: ProductCard()
                );
              },
            )
        ),
      ],
    );
  }
}
