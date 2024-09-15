import 'package:flutter/material.dart';

class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final List<String> tags;
  final Uri? githubLink;
  final bool? webVisibility;

  final Uri? webLink;

  ProjectUtils(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.tags,
      this.githubLink,
      this.webVisibility,
      this.webLink});
}

Uri link(String? link) => Uri.parse(link!);

const imageLink =
    "https://raw.githubusercontent.com/android-newbie/portfolio_assets/main/";

//Projects List

List<ProjectUtils> projectsList = [
  ProjectUtils(
      image: imageLink + "img1" + ".png",
      title: "Portfolio Web App",
      subtitle:
          "A responsive and dynamic portfolio website showcasing projects, skills, and experience, built using Flutter Web.",
      tags: [
        "Dart",
        "Flutter",
        "Firebase",
        " Web Development",
        "Responsive Design"
      ],
      githubLink: link(
        "https://github.com/android-newbie/flutter_portfolio.git",
      ),
      webVisibility: true,
      webLink: link("https://my-portfolio-piyushverma.web.app/")),
  ProjectUtils(
      image: imageLink + "img2" + ".png",
      title: "Flutter Chat App",
      subtitle: "Build Real-Time, Feature-Rich Chat Applications with Flutter",
      tags: ["Flutter", "Firebase", "Dart", "Provider", "Shared Preferences"]),
  ProjectUtils(
      image: imageLink + "img3" + ".png",
      title: "Expense Tracker App",
      subtitle:
          "Create a User-Friendly App to Track Your Spending with Flutter",
      tags: ["Flutter", "Dart", "Hive", "Mobile App Development"]),
];
