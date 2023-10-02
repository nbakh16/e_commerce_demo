import 'package:flutter/material.dart';

import '../custom_stepper.dart';

class ProductNameAndCounter extends StatelessWidget {
  const ProductNameAndCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text('Name of the Product to be displayed here',
          style: Theme.of(context).textTheme.titleMedium,
        ),),
        CustomStepper(
            lowerLimit: 1,
            upperLimit: 6,
            stepValue: 1,
            value: 1,
            onChange: (int value){
              print('>>> $value');
            }
        )
      ],
    );
  }
}