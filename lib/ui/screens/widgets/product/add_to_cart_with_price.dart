import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class AddToCartWithPrice extends StatelessWidget {
  const AddToCartWithPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: mainColor.shade50,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Price',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text('\$ 1,699',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: mainColor.shade900
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ElevatedButton(
              onPressed: (){

              },
              child: const Text('Add to Cart')
            ),
          )
        ],
      ),
    );
  }
}