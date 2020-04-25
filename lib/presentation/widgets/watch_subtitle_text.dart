import 'package:flutter/material.dart';

class WatchSubTitleText extends StatelessWidget {
  final String title;

  const WatchSubTitleText(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.8,
      ),
    );
  }
}
