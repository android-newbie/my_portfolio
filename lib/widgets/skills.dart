// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/widgets/skillItem_container_widget.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
    required this.skillWidth,
    required this.skillHeight,
    required this.noCount,
    required this.flex,
  }) : super(key: key);
  final int skillWidth;
  final int skillHeight;
  final int noCount;
  final int flex;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          constraints: BoxConstraints(
            minWidth: skillWidth * noCount +
                30, // 4 items with 10 px padding between them
            maxWidth: skillWidth * noCount + 30,
          ),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: noCount,
              childAspectRatio: skillWidth / skillHeight,
              mainAxisSpacing: 40,
              crossAxisSpacing: 20,
            ),
            itemCount: skillItems.length,
            itemBuilder: (context, index) {
              return SkillItemWidget(
                  img: skillItems[index]["img"]!,
                  text: skillItems[index]["title"]!);
            },
          ),
        ),
      ),
    );
  }
}
