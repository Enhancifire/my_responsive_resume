// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import './my_info.dart';
import './area_info_text.dart';
import './skills.dart';
import './coding.dart';
import './knowledge.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  void _LauncherUrl(String url) async {
    final launchURL = url;
    if (await canLaunch(launchURL)) {
      await launch(launchURL);
    } else {
      throw 'Could not launch $launchURL';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfo(title: 'Residence', text: 'India'),
                    AreaInfo(title: 'City', text: 'Pune'),
                    AreaInfo(title: 'Age', text: '19'),
                    Skills(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Coding(),
                    MyKnowledge(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              'Download CV',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding / 2,
                            ),
                            SvgPicture.asset('assets/icons/download.svg')
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding / 2),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              _LauncherUrl(
                                  'https://enhancifire.github.io/MyResume/#/');
                            },
                            icon: SvgPicture.asset('assets/icons/twitter.svg'),
                          ),
                          IconButton(
                            onPressed: () {
                              _LauncherUrl(
                                  'https://www.linkedin.com/in/mohammad-faiz-saiyad-295250204');
                            },
                            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                          ),
                          IconButton(
                            onPressed: () {
                              _LauncherUrl('https://github.com/Enhancifire');
                            },
                            icon: SvgPicture.asset('assets/icons/github.svg'),
                          ),
                          Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
