import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Screens/home/home.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        color: Colors.white,
      ),
      child: Row(
        children: [
          flutterCodedText(),
          SizedBox(
            width: 20,
          ),
          Text("I build "),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                "responsive web and mobile app.",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "complete e-Commerce app UI.",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "Chat app with dark and light theme.",
                speed: Duration(milliseconds: 60),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          flutterCodedText(),
        ],
      ),
    );
  }
}