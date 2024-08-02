import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/styles/mainContainerStyles.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.maxFinite, // meaning
      color: CustomColor.black88,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Piyush",
            style: Maincontainerstyles.piyush(16),
          ),
          Text(
            " Verma",
            style: Maincontainerstyles.verma(16),
          ),
          Text(
            " - 2024",
            style: Maincontainerstyles.piyush(16),
          ),
        ],
      ),
    );
  }
}
