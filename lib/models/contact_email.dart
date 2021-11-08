import 'package:url_launcher/url_launcher.dart';

void LaunchURL(String url) async {
  final launchURL = url;
  if (await canLaunch(launchURL)) {
    await launch(launchURL);
  } else {
    throw 'Could not launch $launchURL';
  }
}
