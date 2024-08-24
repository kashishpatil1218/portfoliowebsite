import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Screens/Constant.dart';
import 'package:portfoliowebsite/Screens/home/project_card.dart';
import 'package:portfoliowebsite/Screens/main/responsive.dart';
import 'package:portfoliowebsite/models/projects.dart';

class MyProject extends StatelessWidget {
  const MyProject({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize:20)
          // style: TextStyle(
          //     color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: ProjectsGrideView(crossAxisCount: 1,childAspectRatio: 1.7,),
         mobileLarge: ProjectsGrideView(crossAxisCount: 2),
          tablet: ProjectsGrideView(childAspectRatio: 1.1,),
          desktop: ProjectsGrideView(),
        )
      ],
    );
  }
}

class ProjectsGrideView extends StatelessWidget {
  const ProjectsGrideView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_Projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_Projects[index],
      ),
    );
  }
}
