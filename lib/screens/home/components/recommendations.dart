import 'package:flutter/material.dart';
import 'package:my_responsive_resume/models/Recommendation.dart';

import '../../../constants.dart';
import 'recommendation_card.dart';

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
            'Recommendations',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SizedBox(
            height: 300,
            child: Container(
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      demo_recommendations.length,
                      (index) => Padding(
                            padding:
                                const EdgeInsets.only(right: defaultPadding),
                            child: RecommendationCard(
                              recommendation: demo_recommendations[index],
                            ),
                          ))),
            ),
          ),
        ],
      ),
    );
  }
}
