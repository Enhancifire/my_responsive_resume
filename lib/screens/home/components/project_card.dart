import 'package:flutter/material.dart';
import 'package:my_responsive_resume/models/Project.dart';
import 'package:my_responsive_resume/responsive.dart';

import '../../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            project.description!,
            overflow: TextOverflow.ellipsis,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            style: TextStyle(height: 1.5),
          ),
          if (!Responsive.isMobile(context)) Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              'Read More>>>',
              style: TextStyle(
                color: primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
