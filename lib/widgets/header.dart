import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/utils/links.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.maxFinite, // meaning
      color: CustomColor.black88,

      child: Row(
        children: [
          //logo
          SiteLogo(
            onTap: () {},
          ),
          Spacer(),
          for (int i = 0; i < NavItems.navItems.length; i++)
            TextButton(
              onPressed: () {},
              child: Text(
                NavItems.navItems[i],
                style: TextStyle(color: CustomColor.white90),
              ),
            ),
          Spacer(),
          ElevatedButton(
            onPressed: Links.launchResume,
            child: Text("Resume"),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(CustomColor.red),
              foregroundColor: WidgetStateProperty.all(CustomColor.white90),
            ),
          ),
        ],
      ),
    );
  }
}
