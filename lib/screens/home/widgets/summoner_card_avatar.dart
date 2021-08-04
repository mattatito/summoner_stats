import 'package:flutter/material.dart';

class SummonerCardAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: FractionalOffset.centerLeft,
      margin: EdgeInsets.only(
        top: 20,
        left: 10,
        right: 10,
        bottom: 10,
      ),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.black38,
            width: 2
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Image(
        image: AssetImage("images/gold_3.png"),
      ),
    );
  }
}
