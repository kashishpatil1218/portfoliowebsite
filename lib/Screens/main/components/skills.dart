import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Screens/Constant.dart';
import 'package:portfoliowebsite/Screens/main/components/AnimatedCircular_Pro_indicatore.dart';

class skills extends StatelessWidget {
  const skills({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
           //style: Theme.of(context).textTheme.bodyMedium,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w200),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndecator(
                percentage: 0.90,
                label: "C",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndecator(
                percentage: 0.85,
                label: "C++",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndecator(
                percentage: 0.67,
                label: "Dart",
              ),
            ),
          ],
        ),
      ],
    );
  }
}