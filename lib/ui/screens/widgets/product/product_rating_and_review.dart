import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../circular_icon_button.dart';

class ProductRatingAndReview extends StatelessWidget {
  const ProductRatingAndReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: mainColor.shade400, size: 20,),
            Text('4.8',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextButton(
            onPressed: () {

            },
            child: Text('Review',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: mainColor
                )
            ),
          ),
        ),
        CircularIconButton(
          onTap: (){},
          icon: Icons.favorite_border,
        )
      ],
    );
  }
}