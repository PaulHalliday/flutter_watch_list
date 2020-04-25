import 'package:flutter/material.dart';
import 'package:flutter_watch_list/presentation/pages/watch_list_page.dart';

class WatchSmallCard extends StatelessWidget {
  final WatchListItem watchListItem;

  const WatchSmallCard({Key key, @required this.watchListItem})
      : super(key: key);

  // This could definitely be improved.
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: watchListItem.color,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 150,
      height: 250,
      child: Column(
        children: [
          Flexible(
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Positioned.fill(
                  top: -10,
                  child: Image.asset(
                    watchListItem.imageUrl,
                    width: 60,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Apple Watch 3",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "\$140",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
