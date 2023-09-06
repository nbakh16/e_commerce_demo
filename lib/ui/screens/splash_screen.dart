import 'package:e_commerce_demo/ui/screens/home_screen.dart';
import 'package:e_commerce_demo/ui/utils/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigateToNextPage();
  }

  void navigateToNextPage() {
    Future.delayed(const Duration(seconds: 3)).then((value) async {
      Get.offAll(const HomeScreen(), transition: Transition.fadeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(33.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            Center(
              child: SvgPicture.asset(ImageAssets.logoSVG,
                  width: MediaQuery.sizeOf(context).width * 0.25
              )
            ),
            const Spacer(),
            const CircularProgressIndicator(),
            const SizedBox(height: 12.0,),
            Text('version 0.0.1',
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
