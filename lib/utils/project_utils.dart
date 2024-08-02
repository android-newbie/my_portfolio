import 'package:flutter/material.dart';

class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final List<String> tags;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.tags,
      this.androidLink,
      this.iosLink,
      this.webLink});
}

//Projects List

List<ProjectUtils> projectsList = [
  ProjectUtils(
      image: "lib/assets/images/projects/chat.png",
      title: "Android Chat App",
      subtitle: "Made by piyuh using java and android",
      tags: ["HTML", "CSS", "JS"]),
  ProjectUtils(
      image: "lib/assets/images/projects/chat.png",
      title: "Android Chat App",
      subtitle: "Made by piyuh using java and android studio",
      tags: ["html", "css", "js"]),
  ProjectUtils(
      image: "lib/assets/images/projects/chat.png",
      title: "Android Chat App",
      subtitle: "Made by piyuh using java and android studio",
      tags: ["html", "css", "js"]),
];
