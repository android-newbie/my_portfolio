// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/styles/mainContainerStyles.dart';
import 'package:my_portfolio/widgets/platform.dart';
import 'package:my_portfolio/widgets/skillItem_container_widget.dart';
import 'package:my_portfolio/widgets/skills.dart';

class SkillDesktop extends StatelessWidget {
  const SkillDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize =
        MediaQuery.of(context).size; // used to get teh current screen size
    final screenWidth = screenSize
        .width; // and then by using screenSize we can fetch width of the screeen
    final screenHeight = screenSize.height;

    return Container(
      height: screenHeight,
      width: double.maxFinite,
      //color: CustomColor.black80 // meaning
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          //What I Can do
          Text(
            "What I can do",
            style: Maincontainerstyles.piyush(48),
          ),
          // red bar
          Container(
            height: 5,
            width: 100,
            //color: CustomColor.red,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: CustomColor.red),
          ),
          SizedBox(height: 50),
          //Platform
          Platform(
            platformHeight: 100,
            platformWidth: 324,
            textSize: 24,
            flex: 2,
          ),

          SizedBox(height: 50),
          //SKILLS
          Skills(
            noCount: 4,
            skillHeight: 51,
            skillWidth: 158,
            flex: 2,
          ),
        ],
      ),
    );
  }
}
