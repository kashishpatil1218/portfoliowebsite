//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Screens/Constant.dart';
//import 'package:portfoliowebsite/Screens/home/Recommendations_card.dart';
//import 'package:portfoliowebsite/Screens/home/animated_counter.dart';
import 'package:portfoliowebsite/Screens/home/heighlits.dart';
//import 'package:portfoliowebsite/Screens/home/height_lights.dart';
//import 'package:portfoliowebsite/Screens/home/home.dart';
import 'package:portfoliowebsite/Screens/home/home_banner.dart';
import 'package:portfoliowebsite/Screens/home/my_projects.dart';
//import 'package:portfoliowebsite/Screens/home/project_card.dart';
import 'package:portfoliowebsite/Screens/home/recommendation.dart';
import 'package:portfoliowebsite/Screens/main/main_screen.dart';
//import 'package:portfoliowebsite/models/Recommendation.dart';
//import 'package:portfoliowebsite/models/projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HeighLightsInfo(),
        MyProject(),
        Recommendations(),
      ],
    );
  }
}





Text flutterCodedText() {
  return Text.rich(
    TextSpan(
      text: "<",
      children: [
        TextSpan(
          text: "flutter",
          style: TextStyle(color: primaryColor),
        ),
        TextSpan(text: ">"),
      ],
    ),
  );
}
