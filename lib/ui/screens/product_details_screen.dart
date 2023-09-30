import 'package:e_commerce_demo/ui/screens/widgets/circular_icon_button.dart';
import 'package:e_commerce_demo/ui/screens/widgets/custom_stepper.dart';
import 'package:e_commerce_demo/ui/screens/widgets/product/product_image_slider.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const ProductImageSlider(),
              AppBar(
                title: const Text('Product Details'),
                leading: const BackButton(
                  color: Colors.white,
                ),
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
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
                ),
                Row(
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
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
