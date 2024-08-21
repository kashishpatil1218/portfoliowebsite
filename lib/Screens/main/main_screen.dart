import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Screens/Constant.dart';
import 'components/my_details.dart';

import '../global.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: my_details(),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
