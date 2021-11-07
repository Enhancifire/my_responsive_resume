import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_responsive_resume/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
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
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (!Responsive.isMobileLarge(context))
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                MyBuiltAnimatedText(),
                SizedBox(
                  height: defaultPadding,
                ),
                if (!Responsive.isMobileLarge(context))
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
      maxLines: 1,
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          // ignore: prefer_const_constructors
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text('I Built a '),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
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
