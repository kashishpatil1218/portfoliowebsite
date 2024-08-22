import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Screens/Constant.dart';
import 'package:portfoliowebsite/Screens/home/home.dart';
import 'components/my_details.dart';

import '../global.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
    required this.children,
  }) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: my_details(),
              ),
              SizedBox(width: defaultPadding,),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,

                      //OUr footer
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
