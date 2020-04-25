import 'package:flutter/material.dart';
import 'package:flutter_watch_list/presentation/widgets/watch_app_bar.dart';
import 'package:flutter_watch_list/presentation/widgets/watch_brand_selector.dart';
import 'package:flutter_watch_list/presentation/widgets/watch_card_list.dart';
import 'package:flutter_watch_list/presentation/widgets/watch_small_card.dart';
import 'package:flutter_watch_list/presentation/widgets/watch_subtitle_text.dart';

import 'package:flutter_watch_list/presentation/widgets/watch_title_text.dart';

class BrandItem {
  final String name;
  final bool isActive;

  BrandItem({
    @required this.name,
    @required this.isActive,
  });
}

class WatchListItem {
  final Key key;
  final Color color;
  final String imageUrl;

  bool shouldScale;

  WatchListItem({
    @required this.key,
    @required this.color,
    @required this.imageUrl,
    @required this.shouldScale,
  });
}

class WatchListPage extends StatefulWidget {
  @override
  _WatchListPageState createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage> {
  List<BrandItem> _brands;
  List<WatchListItem> _topListItems;
  List<WatchListItem> _bottomListItems;

  @override
  void initState() {
    super.initState();
    final String _watchImageUrl = "assets/images/watch.png";
    _brands = [
      BrandItem(name: "Apple", isActive: true),
      BrandItem(name: "Samsung", isActive: false),
      BrandItem(name: "Xiaomi", isActive: false),
      BrandItem(name: "Asus", isActive: false)
    ];

    _topListItems = [
      WatchListItem(
        key: Key("one"),
        imageUrl: _watchImageUrl,
        color: Color(0xFF1FD0D4),
        shouldScale: true,
      ),
      WatchListItem(
        key: Key("two"),
        imageUrl: _watchImageUrl,
        color: Color(0xFF1FD2A7),
        shouldScale: false,
      ),
      WatchListItem(
        key: Key("three"),
        imageUrl: _watchImageUrl,
        color: Color(0xFF1EAFCA),
        shouldScale: false,
      ),
    ];
    _bottomListItems = [
      WatchListItem(
        key: Key("bottom_one"),
        imageUrl: _watchImageUrl,
        color: Color(0xFF22ccd1),
        shouldScale: false,
      ),
      WatchListItem(
        key: Key("bottom_two"),
        imageUrl: _watchImageUrl,
        color: Color(0xFF1EAFCA),
        shouldScale: false,
      ),
      WatchListItem(
        key: Key("bottom_three"),
        imageUrl: _watchImageUrl,
        color: Color(0xFF1FD2A7),
        shouldScale: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WatchAppBar(),
                SizedBox(
                  height: 10,
                ),
                WatchTitleText("Discover"),
                SizedBox(
                  height: 24,
                ),
                WatchBrandSelector(
                  brands: _brands,
                ),
                SizedBox(
                  height: 20,
                ),
                WatchCardList(listItems: _topListItems),
                SizedBox(
                  height: 20,
                ),
                WatchSubTitleText("Discount Offer"),
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 210,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _bottomListItems.length,
                    itemBuilder: (BuildContext context, int index) => Padding(
                      padding: EdgeInsets.all(8),
                      child: WatchSmallCard(
                        watchListItem: _bottomListItems[index],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
