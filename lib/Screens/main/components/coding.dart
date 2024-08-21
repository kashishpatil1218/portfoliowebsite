import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Screens/Constant.dart';
import 'package:portfoliowebsite/Screens/main/components/AnimatedCircular_Pro_indicatore.dart';

class coding extends StatelessWidget {
  const coding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
          ),
        ),
        AnimatedLinear_pro(
          percentage: 0.7,
          label: 'Dart',
        ),
        AnimatedLinear_pro(
          percentage:0.69,
          label: 'Python',
        ),
        AnimatedLinear_pro(
          percentage: 0.92,
          label: 'HTML',
        ),
        AnimatedLinear_pro(
          percentage:0.75,
          label: 'CSS',
        ),
        AnimatedLinear_pro(
          percentage: 0.80,
          label: 'C',
        ),
      ],
    );
  }
}