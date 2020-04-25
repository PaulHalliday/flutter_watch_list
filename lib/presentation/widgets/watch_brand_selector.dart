import 'package:flutter/material.dart';
import 'package:flutter_watch_list/presentation/pages/watch_list_page.dart';

class WatchBrandSelector extends StatelessWidget {
  final List<BrandItem> brands;

  WatchBrandSelector({Key key, this.brands}) : super(key: key);

  final TextStyle activeTextStyle = TextStyle(fontWeight: FontWeight.w500);
  final TextStyle inactiveTextStyle =
      TextStyle(color: Colors.black.withOpacity(0.3));

  @override
  Widget build(BuildContext context) {
    return Row(
      children: brands
          .map(
            (BrandItem brand) => Row(
              children: [
                Text(
                  brand.name,
                  style: brand.isActive ? activeTextStyle : inactiveTextStyle,
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          )
          .toList(),
    );
  }
}
