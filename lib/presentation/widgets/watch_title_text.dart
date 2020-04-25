import 'package:flutter/material.dart';

class WatchTitleText extends StatelessWidget {
  final String title;

  const WatchTitleText(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.8,
      ),
    );
  }
}
