import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Screens/Constant.dart';
import 'package:portfoliowebsite/Screens/home/animated_text.dart';
import 'package:portfoliowebsite/Screens/home/home.dart';
import 'package:portfoliowebsite/Screens/main/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/img/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66)),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing  \nArt Space!",
                  style: Responsive.isDesktop(context)
                      ? TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 43)
                      : TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50),
                ),
                if (Responsive.isMobileLarge(context)) const SizedBox(height: 20,),
                MyBuildAnimatedText(),
                SizedBox(height: defaultPadding,),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      "EXPLORE NOW",
                      style: TextStyle(
                          color: darkColor, fontWeight: FontWeight.w500),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
