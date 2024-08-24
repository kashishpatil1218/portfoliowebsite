import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Screens/Constant.dart';
import 'package:portfoliowebsite/Screens/home/Recommendations_card.dart';
import 'package:portfoliowebsite/models/Recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
            style:Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize:20),
            // style: TextStyle(
            //   color: Colors.white,
            //   fontWeight: FontWeight.w500,
            //   fontSize: 18,
            // ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_recommendation.length,
                    (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommendationsCard(recommendation: demo_recommendation[index],),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}