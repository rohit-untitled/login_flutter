import 'package:auth/src/constants/colors.dart';
import 'package:auth/src/constants/image_strings.dart';
import 'package:auth/src/constants/sizes.dart';
import 'package:auth/src/constants/text_strings.dart';
import 'package:auth/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeOut,
              top: splashController.animate.value
                  ? (MediaQuery.of(context).size.height / 2) - 100
                  : -30,
              left: splashController.animate.value
                  ? (MediaQuery.of(context).size.width / 2) - 100
                  : -30,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: splashController.animate.value ? 1.0 : 0.0,
                child: const Image(
                  image: AssetImage(tSplashTopIcon),
                  height: 200,
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeOut,
              bottom: splashController.animate.value ? 100 : 70,
              left: tDefaultSize,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: splashController.animate.value ? 1.0 : 0.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tAppName,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      tAppTagLine,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.easeOut,
              bottom: splashController.animate.value ? 40 : 10,
              right: tDefaultSize,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 1200),
                curve: Curves.easeOut,
                width:
                    splashController.animate.value ? tSplashContainerSize : 0,
                height:
                    splashController.animate.value ? tSplashContainerSize : 0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
