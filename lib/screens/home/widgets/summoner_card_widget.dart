import 'package:flutter/material.dart';

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
    @required this.looses
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {},
      child: Container(
        height: screenHeight * 0.18,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
            )
          ],
        ),
      ),
    );
  }

  double _getWinRate(){
    return  (wins / (wins+looses)) * 100 ;
  }
}
