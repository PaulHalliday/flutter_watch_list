import 'package:flutter/material.dart';
import 'package:flutter_watch_list/presentation/pages/watch_list_page.dart';
import 'package:flutter_watch_list/presentation/widgets/watch_large_card.dart';
import 'package:visibility_detector/visibility_detector.dart';

class WatchCardList extends StatefulWidget {
  final List<WatchListItem> listItems;

  const WatchCardList({Key key, @required this.listItems}) : super(key: key);

  @override
  _WatchCardListState createState() => _WatchCardListState();
}

class _WatchCardListState extends State<WatchCardList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: ListView.builder(
        padding: EdgeInsets.only(bottom: 20),
        scrollDirection: Axis.horizontal,
        itemCount: widget.listItems.length,
        itemBuilder: (BuildContext context, int index) => VisibilityDetector(
          key: widget.listItems[index].key,
          onVisibilityChanged: (VisibilityInfo info) {
            if (info.visibleBounds.width >= 170) {
              setState(() {
                widget.listItems[index].shouldScale = true;
              });
            } else {
              setState(() {
                widget.listItems[index].shouldScale = false;
              });
            }
          },
          child: Padding(
            padding: EdgeInsets.all(12),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeIn,
              margin: const EdgeInsets.only(right: 26),
              transform: widget.listItems[index].shouldScale
                  ? (Matrix4.identity()..scale(1.10, 1.10))
                  : (Matrix4.identity()
                    ..scale(0.95, 0.95)
                    ..translate(0.0, 20.0)),
              child: WatchLargeCard(
                watchListItem: widget.listItems[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
