import 'package:flutter/material.dart';
import 'package:summoner_stats/screens/dashboard/dashboard_card.dart';

class DashBoardScreen extends StatefulWidget {
  DashBoardScreen({Key key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Container(
                padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                height: 150,
                width: double.maxFinite,
                child: DashBoardCard());
          },
        ),
      ),
    );
  }
}
