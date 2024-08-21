import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfoliowebsite/Screens/Constant.dart';
import 'package:portfoliowebsite/Screens/main/components/AnimatedCircular_Pro_indicatore.dart';
import 'package:portfoliowebsite/Screens/main/components/areaInfo.dart';
import 'package:portfoliowebsite/Screens/main/components/coding.dart';
import 'package:portfoliowebsite/Screens/main/components/myInfo.dart';
import 'package:portfoliowebsite/Screens/main/components/my_details.dart';
import 'package:portfoliowebsite/Screens/main/components/skills.dart';

Drawer my_details() {
  var defaultpadding;
  return Drawer(
    child: Column(
      children: [
        myInfo(),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                const areaInfo(
                  title: "Residence",
                  text: "Gujarat",
                ),
                const areaInfo(
                  title: "City",
                  text: "Surat",
                ),
                const areaInfo(
                  title: "Age",
                  text: "18",
                ),
                const skills(),
                SizedBox(
                  height: defaultpadding,
                ),
                const coding(),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                    'Knowledge',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w200),
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/check.svg",),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
