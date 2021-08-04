import 'package:flutter/material.dart';
import 'package:summoner_stats/screens/home/widgets/summoner_card_avatar.dart';
import 'package:summoner_stats/screens/home/widgets/summoner_card_content.dart';

class SummonerCardWidget extends StatelessWidget {
  final String tipo;
  final String elo;
  final String livingPoints;
  final int wins;
  final int looses;

  const SummonerCardWidget({
    Key key,
    @required this.tipo,
    @required this.elo,
    @required this.livingPoints,
    @required this.wins,
    @required this.looses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {},
      child: Container(
        height: screenHeight * 0.18,
        width: screenWidth * 0.80,
        margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
        child: Stack(
          children: [
            SummonerCardContent(
              tipo: tipo,
              elo: elo,
              livingPoints: livingPoints,
              wins: wins,
              looses: looses,
            ),
            SummonerCardAvatar(),
          ],
        ),
      ),
    );
  }
}
