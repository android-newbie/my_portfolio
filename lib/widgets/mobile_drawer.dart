import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/nav_items.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close),
              ),
              for (int i = 0; i < NavItems.navIcons.length; i++)
                ListTile(
                  title: Text(NavItems.navItems[i]),
                  leading: NavItems.navIcons[i],
                  onTap: () {},
                )
            ],
          ),
        );
  }
}