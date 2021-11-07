import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class MyKnowledge extends StatelessWidget {
  const MyKnowledge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Knowledge',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(text: 'Flutter, Dart'),
        KnowledgeText(text: 'Data Collection and Analysis'),
        KnowledgeText(text: 'Git, Github, Version Control'),
        KnowledgeText(text: 'Machine Learning'),
        KnowledgeText(text: 'Tensorflow'),
        KnowledgeText(text: 'Game Design using Python'),
        KnowledgeText(text: 'Working with API'),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text(text)
        ],
      ),
    );
  }
}
