import 'package:flutter/material.dart';

class WatchAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: Image.asset("assets/images/menu.png"),
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://picsum.photos/100/100",
              ),
              radius: 13,
            )
          ],
        )
      ],
    );
  }
}
