// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/styles/mainContainerStyles.dart';
import 'package:my_portfolio/widgets/profilePhoto.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize =
        MediaQuery.of(context).size; // used to get teh current screen size
    final screenWidth = screenSize
        .width; // and then by using screenSize we can fetch width of the screeen
    final screenHeight = screenSize.height;
    return Container(
      height: screenHeight,
      width: screenWidth,
      constraints: BoxConstraints(minHeight: 350),//meaning
      color: CustomColor.black88,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //image
              ProfilePhoto(
                radius: 100,
              ),
              SizedBox(
                width: 20,
              ),
              //Piyush verma and description
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Piyus Verma
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Piyush",
                          style: Maincontainerstyles.piyush(72),
                        ),
                        TextSpan(
                          text: " Verma",
                          style: Maincontainerstyles.verma(72),
                        ),
                      ],
                    ),
                  ),

                  //I design and build things on internet
                  Text(
                    "I design and build things on the internet",
                    style: Maincontainerstyles.iDesign(24),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.expand_more),
            ],
          ),
        ],
      ),
    );
  }
}
