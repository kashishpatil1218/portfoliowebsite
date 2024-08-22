import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        AspectRatio(
          aspectRatio: 3,
          child: Image.asset("assets/img/bg.jpeg"),
        )
      ],
    );
  }
}
