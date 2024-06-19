import 'package:auth/src/constants/image_strings.dart';
import 'package:auth/src/features/authentication/models/model_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'widgets/onboardingPage.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      ObBoardingPage(
        model: OnBoardingModel(
          image: screen1,
          title: 'Title1',
          subtitle: 'Subtitle 1',
          height: size.height,
          bgColor: Colors.grey,
          counterText: '1/3',
        ),
      ),
      ObBoardingPage(
        model: OnBoardingModel(
          image: screen2,
          title: 'Title2',
          subtitle: 'Subtitle 2',
          height: size.height,
          bgColor: Colors.amber,
          counterText: '2/3',
        ),
      ),
      ObBoardingPage(
        model: OnBoardingModel(
          image: screen3,
          title: 'Title3',
          subtitle: 'Subtitle 3',
          height: size.height,
          bgColor: Colors.blue,
          counterText: '3/3',
        ),
      )
    ];
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: pages,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white,
              ),
              child: Container(),
            ),
          )
        ],
      ),
    );
  }
}
