import 'package:flutter/material.dart';

class DashBoardCardBorder extends StatelessWidget {
  const DashBoardCardBorder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 50,
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "V",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            width: 20,
            height: 1,
            color: Colors.white,
          ),
          Text(
            "12:30",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
