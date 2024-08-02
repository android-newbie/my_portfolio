import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  const Tags({super.key, required this.tag});
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(2),
      height: 29,
      width: 48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white)),
      child: Center(child: Text(tag)),
    );
  }
}
