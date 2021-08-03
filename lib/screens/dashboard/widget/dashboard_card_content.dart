import 'package:flutter/material.dart';
import 'package:summoner_stats/screens/dashboard/widget/circle_item.dart';
import 'package:summoner_stats/screens/dashboard/widget/square_item.dart';

class DashBoardCardContent extends StatelessWidget {
  const DashBoardCardContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                CircleItem(size: 44),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [SquareItem(size: 20), SquareItem(size: 20)],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [CircleItem(size: 20), CircleItem(size: 20)],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "99 / 99 / 99",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                SquareItem(size: 30),
                SquareItem(size: 30),
                SquareItem(size: 30),
                SquareItem(size: 30),
                SquareItem(size: 30),
                SquareItem(size: 30),
                CircleItem(size: 30)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
