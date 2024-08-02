//import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher/url_launcher_string.dart';

class Links {
  static Uri resumeLinK = Uri.parse(
      "https://docs.google.com/document/d/1Pmgf_7YHXdqAsvy_qiIteoSyWl4SteJR315vguFsHzw/edit?usp=sharing");
  static Uri githubUrl = Uri.parse("https://github.com/android-newbie/");
  static Uri linkedinUrl =
      Uri.parse("https://www.linkedin.com/in/piyush-verma-236253176/");

  static Uri emailAddress = Uri.parse("mailto:piyushverma.809@gmail.com");

  static void launchResume() async {
    if (await canLaunchUrl(resumeLinK)) {
      await launchUrl(resumeLinK);
    } else {
      throw "could not launch $resumeLinK";
    }
  }

  static void launchEmail() async {
    if (await canLaunchUrl(emailAddress)) {
      await launchUrl(emailAddress);
    } else {
      throw "could not launch $emailAddress";
    }
  }
}
