import 'package:flutter/material.dart';
import 'package:my_responsive_resume/responsive.dart';
import '../../../components/animated_counter.dart';

import '../../../constants.dart';
import 'high_lights.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HighLights(
                      counter: AnimatedCounter(
                        value: 10,
                      ),
                      label: 'Personal Projects',
                    ),
                    HighLights(
                      counter: AnimatedCounter(
                        value: 15,
                      ),
                      label: 'Github Repositories',
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HighLights(
                      counter: AnimatedCounter(
                        value: 130,
                      ),
                      label: 'LinkedIn Connections',
                    ),
                    HighLights(
                      counter: AnimatedCounter(
                        value: 350,
                      ),
                      label: 'Hours Spent',
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HighLights(
                  counter: AnimatedCounter(
                    value: 10,
                  ),
                  label: 'Personal Projects',
                ),
                HighLights(
                  counter: AnimatedCounter(
                    value: 15,
                  ),
                  label: 'Github Repositories',
                ),
                HighLights(
                  counter: AnimatedCounter(
                    value: 130,
                  ),
                  label: 'LinkedIn Connections',
                ),
                HighLights(
                  counter: AnimatedCounter(
                    value: 350,
                  ),
                  label: 'Hours Spent',
                ),
              ],
            ),
    );
  }
}
