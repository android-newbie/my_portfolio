// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/links.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    Key? key,
    required this.onLogoTap,
    required this.onMenuTap,
  }) : super(key: key);

  final VoidCallback onLogoTap; //meaning
  final VoidCallback onMenuTap; //meaning

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
            onTap: onLogoTap,
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
          Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
