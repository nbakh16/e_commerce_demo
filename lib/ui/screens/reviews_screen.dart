import 'package:e_commerce_demo/ui/screens/widgets/add_review_section.dart';
import 'package:e_commerce_demo/ui/screens/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/image_assets.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Reviews',),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.white,
                      elevation: 3.0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  maxRadius: 16,
                                  child: SvgPicture.asset(ImageAssets.logoSVG,),
                                ),
                                const SizedBox(width: 8.0,),
                                Text('Reviewer name',
                                  style: Theme.of(context).textTheme.titleMedium,
                                )
                              ],
                            ),
                            const SizedBox(height: 8.0,),
                            Text('''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                              ''',
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.justify,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const AddReviewSection()
        ],
      ),
    );
  }
}
