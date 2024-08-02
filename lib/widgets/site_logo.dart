// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        "lib/assets/images/logo.png",
        height: 50,
        width: 20,
      ),
    );
  }
}
