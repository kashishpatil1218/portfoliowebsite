import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Screens/Constant.dart';
import 'package:portfoliowebsite/Screens/home/animated_counter.dart';
import 'package:portfoliowebsite/Screens/home/heighlits.dart';
import 'package:portfoliowebsite/Screens/home/height_lights.dart';
import 'package:portfoliowebsite/Screens/home/home.dart';
import 'package:portfoliowebsite/Screens/home/home_banner.dart';
import 'package:portfoliowebsite/Screens/home/my_projects.dart';
import 'package:portfoliowebsite/Screens/home/project_card.dart';
import 'package:portfoliowebsite/Screens/main/main_screen.dart';
import 'package:portfoliowebsite/models/Recommendation.dart';
import 'package:portfoliowebsite/models/projects.dart';

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

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_recommendation.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommendationsCard(recommendation: demo_recommendation[index],),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendationsCard extends StatelessWidget {
  const RecommendationsCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);
  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
           recommendation.name!,
          ),
          Text(
            recommendation.source!,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5, color: Colors.grey),
          ),
        ],
      ),
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
