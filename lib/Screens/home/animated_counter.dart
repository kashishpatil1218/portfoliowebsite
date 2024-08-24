import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Screens/Constant.dart';

class animatedCounter extends StatelessWidget {
  const animatedCounter({
    Key? key,
    required this.value,
    this.text,
  }) : super(key: key);

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) => Text(
        "$value$text",
        // style: TextStyle(
        //     color: primaryColor, fontWeight: FontWeight.bold, fontSize: 18),
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(color:primaryColor )
      ),
    );
  }
}