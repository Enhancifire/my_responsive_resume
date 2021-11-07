import 'package:flutter/material.dart';
import 'package:my_responsive_resume/models/Project.dart';
import 'package:my_responsive_resume/responsive.dart';
import 'package:my_responsive_resume/screens/home/components/project_card.dart';

import '../../../constants.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: ProjectsGridView(crossaxiscount: 1, childAspectRatio: 1.7),
          mobileLarge: ProjectsGridView(crossaxiscount: 2
              // childAspectRatio: 2,
              ),
          tablet: ProjectsGridView(childAspectRatio: 1.1),
          desktop: ProjectsGridView(),
        ),
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossaxiscount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossaxiscount;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossaxiscount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
