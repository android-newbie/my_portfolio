// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/styles/mainContainerStyles.dart';

import 'platform.dart';
import 'skills.dart';

class SkillMobile extends StatelessWidget {
  const SkillMobile({super.key});

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
            style: Maincontainerstyles.piyush(36),
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
            platformHeight: 60,
            platformWidth: 174,
            textSize: 12,
            flex: 1,
          ),

          SizedBox(height: 10),
          //SKILLS
          Skills(
            noCount: 2,
            skillHeight: 51,
            skillWidth: 158,
            flex: 2,
          ),
        ],
      ),
    );
  }
}
