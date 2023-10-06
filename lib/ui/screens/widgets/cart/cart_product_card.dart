import 'package:e_commerce_demo/ui/screens/widgets/custom_stepper.dart';
import 'package:e_commerce_demo/ui/utils/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/colors.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      color: mainColor.shade50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0)
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(ImageAssets.logoSVG, height: 75,),
              )
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Product Name',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text('Color: red, Size: L',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: textColor.withOpacity(0.5)
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  Text('\$ 999',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: mainColor,
                      fontWeight: FontWeight.w900
                  ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline, color: textColor.withOpacity(0.5),)),
                  CustomStepper(lowerLimit: 1, upperLimit: 10, stepValue: 1, value: 1, onChange: (value){})
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}