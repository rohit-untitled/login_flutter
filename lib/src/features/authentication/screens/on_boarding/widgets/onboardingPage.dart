import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants/sizes.dart';
import '../../../models/model_on_boarding.dart';

class ObBoardingPage extends StatelessWidget {
  const ObBoardingPage({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            model.image,
            height: model.height * 0.5,
          ),
          Column(
            children: [
              Text(
               model.title,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                model.subtitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
