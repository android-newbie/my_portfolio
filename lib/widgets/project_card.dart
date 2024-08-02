import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/styles/mainContainerStyles.dart';
import 'package:my_portfolio/widgets/tags.dart';

class ProjectCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final List<String> tags;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  const ProjectCard(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.tags,
      this.androidLink,
      this.iosLink,
      this.webLink});

  @override
  Widget build(BuildContext context) {
    return Card(
      // shadowColor: CustomColor.red,
      margin: EdgeInsets.all(10),
      // shape: Border.all(color: Colors.white),
      elevation: 20,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
          border: Border.all(color: Colors.white),
        ),
        width: 300,
        height: 400,
        //color: Colors.black,
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //image
                Card(
                  color: Colors.white,
                  child: Container(
                    width: 385,
                    height: 215,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.none)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //project name
                Text(
                  title,
                  style: Maincontainerstyles.verma(24),
                ),
                SizedBox(
                  height: 10,
                ),
                //description
                Text(subtitle),
                SizedBox(
                  height: 10,
                ),
                //tags
                Row(
                  children: [for (var tag in tags) Tags(tag: tag)],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
