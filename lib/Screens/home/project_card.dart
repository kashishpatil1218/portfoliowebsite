import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Screens/Constant.dart';
import 'package:portfoliowebsite/Screens/main/responsive.dart';
import 'package:portfoliowebsite/models/projects.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          const SizedBox(height: defaultPadding),
          Text(
            project.description!,
            maxLines:Responsive.isMobileLarge(context)?3: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5, color: Colors.grey),
          ),
          Spacer(),
          const SizedBox(height: defaultPadding),
          TextButton(
            onPressed: () {},
            child: Text("Read More>>",style: TextStyle(color: primaryColor),),
          ),
        ],
      ),
    );
  }
}