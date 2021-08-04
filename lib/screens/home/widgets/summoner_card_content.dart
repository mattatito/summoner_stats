import 'package:flutter/material.dart';

class SummonerCardContent extends StatelessWidget {
  final String tipo;
  final String elo;
  final String livingPoints;
  final int wins;
  final int looses;

  const SummonerCardContent(
      {Key key,
        @required this.tipo,
        @required this.elo,
        @required this.livingPoints,
        @required this.wins,
        @required this.looses})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 40.0),
      width: 300,
      decoration: BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, blurRadius: 5.0, offset: Offset(0.0, 10.0))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(tipo),
          SizedBox(
            height: 3,
          ),
          Text(
            elo,
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text.rich(
            TextSpan(
                text: "$livingPoints LP",
                style: TextStyle(fontWeight: FontWeight.w700),
                children: [
                  TextSpan(
                    text: "/ ${wins}V ${looses}L",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ]),
          ),
          Text("Taxa de Vitória ${_getWinRate().toStringAsFixed(0)}%"),
        ],
      ),
    );

  }

  double _getWinRate() {
    return (wins / (wins + looses)) * 100;
  }
}
