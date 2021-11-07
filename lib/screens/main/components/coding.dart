import 'package:flutter/material.dart';

import '../../../components/animated_progress_indicator.dart';
import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
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
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: 'Python',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.62,
          label: 'C',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: 'C++',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.40,
          label: 'Lua',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.80,
          label: 'Dart',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.55,
          label: 'Bash',
        ),
      ],
    );
  }
}
