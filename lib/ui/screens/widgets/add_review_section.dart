import 'package:flutter/material.dart';

import '../../utils/colors.dart';


class AddReviewSection extends StatelessWidget {
  const AddReviewSection({
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
          Text('Review (1000)',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          ElevatedButton(
            onPressed: (){

            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder()
            ),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}