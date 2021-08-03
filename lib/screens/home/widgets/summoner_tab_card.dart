import 'package:flutter/material.dart';
import 'package:summoner_stats/screens/home/widgets/summoner_card_widget.dart';

class SummonerTabCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
              SummonerCardWidget(
                tipo: "Rankeada solo",
                elo: "Gold 3",
                livingPoints: "46",
                wins: 99,
                looses: 94,
              ),
        ],
      ),
    );
  }
}
