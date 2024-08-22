import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfoliowebsite/Screens/Constant.dart';
import 'package:portfoliowebsite/Screens/main/components/AnimatedCircular_Pro_indicatore.dart';
import 'package:portfoliowebsite/Screens/main/components/areaInfo.dart';
import 'package:portfoliowebsite/Screens/main/components/coding.dart';
import 'package:portfoliowebsite/Screens/main/components/knowledge.dart';
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
                Knowledges(),
                Divider(),
                SizedBox(height: 20,),
                TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text(
                          "DOWNLOAD CV",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 10),
                        SvgPicture.network("assets/icons/download.svg"),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:20),
                  color: Color(0xFF24242E),
                  child: Row(
                    children: [
                      Spacer(),

                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.network("assets/icons/linkedin.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.network("assets/icons/github.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.network("assets/icons/twitter.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.network("assets/icons/behance.svg"),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
