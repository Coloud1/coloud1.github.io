import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> launchEmail(String email) async {
  if (await canLaunch(
      "mailto:$email?subject=Flutter developer&body=Hello, Ivan")) {
    await launch("mailto:$email?subject=Flutter developer&body=Hello, Ivan");
  } else {
    throw 'Could not launch $email';
  }
}

Future<void> launchGeo(String geoPos) async {
  if (await canLaunch(geoPos)) {
    await launch(geoPos);
  } else {
    throw 'Could not launch $geoPos';
  }
}
