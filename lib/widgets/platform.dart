// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/styles/mainContainerStyles.dart';

class Platform extends StatelessWidget {
  const Platform({
    Key? key,
    required this.platformWidth,
    required this.platformHeight,
    required this.textSize,
    required this.flex,
  }) : super(key: key);
  final int platformWidth;
  final int platformHeight;
  final double textSize;
  final int flex;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth:
              platformWidth * 2 + 30, // 4 items with 10 px padding between them
          maxWidth: platformWidth * 2 + 30,
        ),
        child: GridView.builder(
          
          //shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: platformWidth / platformHeight,
              mainAxisSpacing: 30,
              crossAxisSpacing: 20),
          itemCount: platformItems.length,
          itemBuilder: (context, index) {
            return SizedBox(
              
              height: 100,
              width: 324,
              child: GridTile(
                child: ListTile(
                  
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  tileColor: CustomColor.black88,
                  leading: Image.asset(
                    platformItems[index]["img"]!,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    platformItems[index]["title"]!,
                    style: Maincontainerstyles.verma(textSize),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
