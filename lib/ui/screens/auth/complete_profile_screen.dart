import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utils/image_assets.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController addressController = TextEditingController();

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
                  Text('Complete Profile',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text('Get started with us with your details',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey
                    ),
                  ),
                  const SizedBox(height: 16.0,),
                  customTextFormField(
                    controller: fNameController,
                    label: 'First Name'
                  ),
                  customTextFormField(
                    controller: lNameController,
                    label: 'Last Name'
                  ),
                  customTextFormField(
                    controller: mobileController,
                    label: 'Mobile',
                    textInputType: TextInputType.phone
                  ),
                  customTextFormField(
                    controller: cityController,
                    label: 'City',
                    textInputType: TextInputType.text
                  ),
                  customTextFormField(
                    controller: addressController,
                    label: 'Shipping Address',
                    maxLine: 5,
                    textInputType: TextInputType.multiline,
                    textInputAction: TextInputAction.done
                  ),
                  const SizedBox(height: 16.0,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {

                        },
                        child: const Text('Complete')
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

  Widget customTextFormField(
      {required TextEditingController controller,
      required String label,
      TextInputType textInputType = TextInputType.name,
      TextInputAction textInputAction = TextInputAction.next,
      int maxLine = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: TextFormField(
        controller: controller,
        maxLines: maxLine,
        keyboardType: textInputType,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          hintText: label,
          labelText: label,
        ),
      ),
    );
  }
}
