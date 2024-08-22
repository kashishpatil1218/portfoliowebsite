import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Screens/Constant.dart';
import 'package:portfoliowebsite/Screens/home/animated_counter.dart';
import 'package:portfoliowebsite/Screens/home/height_lights.dart';

class HeighLightsInfo extends StatelessWidget {
  const HeighLightsInfo({Key? key,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLight(
            counter: animatedCounter(
              value: 119,
              text: "k+",
            ),
            label: "Subscribers",
          ),
          HeighLight(
            counter: animatedCounter(
              value: 40,
              text: "+",
            ),
            label: "Videos",
          ),
          HeighLight(
            counter: animatedCounter(
              value: 14,
              text: "+",
            ),
            label: "GitHub Projects",
          ),
          HeighLight(
            counter: animatedCounter(
              value: 10,
              text: "k+",
            ),
            label: "Stars",
          ),
        ],
      ),
    );
  }
}