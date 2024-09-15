import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/styles/mainContainerStyles.dart';
import 'package:my_portfolio/utils/links.dart';
import 'package:my_portfolio/widgets/tags.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final List<String> tags;
  final Uri? githubLink;
  final bool? webVisibility;
  final Uri? webLink;

  const ProjectCard(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.tags,
      this.githubLink,
      this.webLink,
      this.webVisibility});

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () async {
                        await launchUrl(githubLink!);
                      },
                      icon: ImageIcon(
                        AssetImage("lib/assets/icons/githubicon.png"),
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Visibility(
                      visible: webVisibility ?? false,
                      child: IconButton(
                        onPressed: () async {
                          await launchUrl(webLink!);
                        },
                        icon: ImageIcon(
                          AssetImage("lib/assets/icons/Website.png"),
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),

                //image
                Card(
                  color: Colors.white,
                  child: Container(
                    width: 385,
                    height: 215,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(image), fit: BoxFit.cover)),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [for (var tag in tags) Tags(tag: tag)],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
