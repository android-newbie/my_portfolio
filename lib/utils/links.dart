//import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher/url_launcher_string.dart';

class Links {
  static Uri resumeLinK = Uri.parse(
      "https://docs.google.com/document/d/1Pmgf_7YHXdqAsvy_qiIteoSyWl4SteJR315vguFsHzw/edit?usp=sharing");
  static Uri githubUrl = Uri.parse("https://github.com/android-newbie/");
  static Uri linkedinUrl =
      Uri.parse("https://www.linkedin.com/in/piyush-verma-236253176/");
  static const emailAddress = "piyushverma.809@gmail.com";

  static void launchResume() async {
    if (await canLaunchUrl(resumeLinK)) {
      await launchUrl(resumeLinK);
    } else {
      throw "could not launch $resumeLinK";
    }
  }

  static void launchEmail() async {
    final Uri gmailUri = Uri(
        scheme: 'https',
        host: 'mail.google.com',
        path: '/mail/u/0/',
        queryParameters: {
          //'view': 'cm',
          //'fs': '1',
          'tf': '1',
          'to': emailAddress,
          'su': 'Your Subject Here',
          'body': 'Hello,'
        });

    if (await canLaunch(gmailUri.toString())) {
      await launch(gmailUri.toString());
    } else {
      throw 'Could not launch $gmailUri';
    }
  }
}
