import 'package:flutter/material.dart';
import 'package:flutter_watch_list/presentation/pages/watch_list_page.dart';

class WatchLargeCard extends StatelessWidget {
  final WatchListItem watchListItem;

  const WatchLargeCard({Key key, this.watchListItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: watchListItem.color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          buildCardTitle(),
          buildCardImage(),
        ],
      ),
    );
  }

  Positioned buildCardImage() {
    return Positioned(
      bottom: -32,
      right: -16,
      child: Image.asset(
        watchListItem.imageUrl,
        height: 300,
        width: 180,
      ),
    );
  }

  Padding buildCardTitle() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Apple Watch 5",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              InkWell(
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 20,
                ),
                onTap: () {},
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "\$189",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
