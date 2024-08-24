import 'package:flutter/material.dart';

class HeighLight extends StatelessWidget {
  const HeighLight({Key? key, required this.counter, this.label})
      : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(
          width:10,
        ),
        Text(
          label!,
         style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 15,fontWeight: FontWeight.w500)
         // style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}