// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:my_portfolio/constants/colors.dart';

class SkillItemWidget extends StatelessWidget {
  const SkillItemWidget({
    Key? key,
    required this.img,
    required this.text, this.textSize, this.imgW, this.imgH,
  }) : super(key: key);
  final String img;
  final String text;
  final imgW;
  final imgH;
  final textSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158,
      height: 51,
      decoration: BoxDecoration(
          color: CustomColor.black88,
          borderRadius: BorderRadius.all(Radius.circular(40)),
          border: Border.all(width: 1, color: CustomColor.white90)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Image.asset(img,width:imgW ,height:imgH ,), Text(text,style: TextStyle(fontSize: textSize),)],
      ),
    );
  }
}
