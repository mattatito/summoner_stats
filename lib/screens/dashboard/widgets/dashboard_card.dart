import 'package:flutter/material.dart';
import 'package:summoner_stats/models/match_model.dart';
import 'dashboard_card_border.dart';
import 'dashboard_card_content.dart';

class DashBoardCard extends StatelessWidget {
  const DashBoardCard({Key key, this.matchesDetails}) : super(key: key);
  final ParticipantMatch matchesDetails;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          DashBoardCardBorder(
            win: matchesDetails.win,
          ),
          DashBoardCardContent(
            matchDetails: matchesDetails,
          )
        ],
      ),
    );
  }
}
