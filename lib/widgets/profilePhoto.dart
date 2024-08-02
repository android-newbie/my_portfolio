// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    Key? key,
    required this.radius,
  }) : super(key: key);
  final double radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius, // Image radius
      backgroundImage: AssetImage('lib/assets/images/profileImage.png'),
    );
  }
}
