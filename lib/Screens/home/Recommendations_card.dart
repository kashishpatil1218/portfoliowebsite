import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Screens/Constant.dart';
import 'package:portfoliowebsite/models/Recommendation.dart';

class RecommendationsCard extends StatelessWidget {
  const RecommendationsCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);
  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 15)
          ),
          Text(
            recommendation.source!,
            //style: const TextStyle(color: Colors.grey),
              //style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 15)
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}