import 'package:e_commerce_demo/ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../controllers/otp_verification_controller.dart';
import '../../utils/image_assets.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  TextEditingController otpTEController = TextEditingController();

  final OTPVerificationController otpVerificationController = Get.find();

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
                  Text('Enter OTP code',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text('A 4 digit code has been sent in you email',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey
                    ),
                  ),
                  const SizedBox(height: 18.0,),
                  PinCodeTextField(
                    controller: otpTEController,
                    appContext: context,
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8),
                      fieldHeight: 50,
                      fieldWidth: 50,
                      activeFillColor: Colors.white,
                      activeColor: mainColor,
                      inactiveColor: Colors.grey,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: false,
                  ),
                  const SizedBox(height: 14.0,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          otpVerificationController.startCountdown();
                        },
                        child: const Text('Next')
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  Obx(()=>RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.grey
                        ),
                        children: [
                          const TextSpan(text: 'This code will expire in '),
                          TextSpan(text: '${otpVerificationController.totalTimeInSecond.value}s',
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                color: mainColor, fontWeight: FontWeight.w700
                            ),
                          )
                        ]
                      ),
                    ),
                  ),
                  Obx(()=>TextButton(
                    onPressed: otpVerificationController.totalTimeInSecond.value != 0 ? null : (){print('yo');},
                    child: const Text('Resend Code'),
                  ))
                ].animate(interval: 200.ms).fadeIn().slideY(begin: 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
