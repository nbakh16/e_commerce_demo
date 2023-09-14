import 'package:e_commerce_demo/ui/utils/colors.dart';
import 'package:e_commerce_demo/ui/utils/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  TextEditingController emailTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.focusScope?.unfocus();
      },
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  SvgPicture.asset(ImageAssets.logoSVG,
                    width: Get.width<500 ? Get.width * 0.25 : Get.width * 0.15,
                  ),
                  const SizedBox(height: 14.0,),
                  Text('Welcome back',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text('Please enter your email address',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey
                    ),
                  ),
                  const SizedBox(height: 14.0,),
                  TextFormField(
                    controller: emailTEController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email_outlined),
                      suffixIcon: IconButton(
                        onPressed: (){
                          emailTEController.clear();
                        },
                        icon: Icon(Icons.cancel, color: mainColor.shade300,)
                      ),
                      hintText: 'Email address',
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 14.0,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      child: const Text('Next')
                    ),
                  )
                ].animate(interval: 200.ms).fadeIn().slideY(begin: 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
