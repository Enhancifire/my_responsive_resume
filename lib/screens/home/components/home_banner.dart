import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg.jpeg',
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.7),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover my \nAwesome Projects!',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
                MyBuiltAnimatedText(),
                SizedBox(
                  height: defaultPadding,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'EXPLORE NOW!',
                    style: TextStyle(color: darkColor),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2,
                        vertical: defaultPadding),
                    backgroundColor: primaryColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuiltAnimatedText extends StatelessWidget {
  const MyBuiltAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          // ignore: prefer_const_constructors
          FlutterCodedText(),
          SizedBox(width: defaultPadding / 2),
          Text('I Built a '),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'Responsive Web and Mobile Resume app in Flutter',
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'Calculator using Flutter',
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'Database Management System in C',
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'Alarm Clock in Flutter',
                speed: Duration(milliseconds: 60),
              ),
            ],
          ),
          SizedBox(width: defaultPadding / 2),
          FlutterCodedText(),
        ],
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
        text: '<',
        style: TextStyle(color: Colors.white),
      ),
      TextSpan(
        text: 'flutter',
        style: TextStyle(
          color: primaryColor,
        ),
      ),
      TextSpan(
        text: '>',
        style: TextStyle(color: Colors.white),
      ),
    ]));
  }
}
