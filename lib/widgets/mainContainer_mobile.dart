import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/styles/mainContainerStyles.dart';
import 'package:my_portfolio/widgets/profilePhoto.dart';

class MaincontainerMobile extends StatelessWidget {
  const MaincontainerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: double.maxFinite,
      color: CustomColor.black88,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //photo
          ProfilePhoto(radius: 100),
          //Piyus Verma
          Text(
            "Piyush",
            style: Maincontainerstyles.piyush(64),
          ),
          Text(
            "Verma",
            style: Maincontainerstyles.verma(64),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            "I design and build things on the internet",
            style: Maincontainerstyles.iDesign(16),
          ),
        ],
      ),
    );
  }
}
