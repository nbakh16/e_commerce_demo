import 'package:e_commerce_demo/ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/image_assets.dart';
import 'circular_icon_button.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                color: mainColor.shade100,
                padding: const EdgeInsets.all(6.0),
                child: SvgPicture.asset(ImageAssets.logoSVG)
              )
          ),
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('\$100'),
                  Text('4.8'),
                  CircularIconButton(
                    onTap: (){},
                    icon: Icons.ac_unit,
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
