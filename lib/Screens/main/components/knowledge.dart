import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfoliowebsite/Screens/Constant.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Knowledges',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w200),
          ),
        ),
        Knowledge(text: "  Flutter, Dart",),
        Knowledge(text: "  Phython, C++",),
        Knowledge(text: "  HTML, CSS",),
        Knowledge(text: "  GIT knowledge",),
      ],
    );
  }
}



class Knowledge extends StatelessWidget {
  const Knowledge({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.network("assets/icons/check.svg"),
          Text(
            text,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
