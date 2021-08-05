import 'package:flutter/material.dart';
import 'package:summoner_stats/models/match_model.dart';
import 'package:summoner_stats/screens/dashboard/widgets/square_item.dart';

import 'circle_item.dart';

class DashBoardCardContent extends StatelessWidget {
  const DashBoardCardContent({Key key, this.matchDetails}) : super(key: key);
  final ParticipantMatch matchDetails;

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
                CircleItem(size: 44, championName: matchDetails.championName),
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
                        "${matchDetails.kills} / ${matchDetails.deaths} / ${matchDetails.assists}",
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
              children:
              [
                SquareItem(size: 30, itemImageId: matchDetails.item0,),
                SquareItem(size: 30, itemImageId: matchDetails.item1),
                SquareItem(size: 30, itemImageId: matchDetails.item2),
                SquareItem(size: 30, itemImageId: matchDetails.item3),
                SquareItem(size: 30, itemImageId: matchDetails.item4),
                SquareItem(size: 30, itemImageId: matchDetails.item5),
                CircleItem(size: 30, championName: matchDetails.championName)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
