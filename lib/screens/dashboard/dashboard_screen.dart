import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:summoner_stats/screens/dashboard/widgets/dashboard_card.dart';

import 'controllers/dashboard_store.dart';

class DashBoardScreen extends StatefulWidget {
  DashBoardScreen({Key key}) : super(key: key){
    dashBoardStore.start(
        "2h7_SJ6KZ-C9BvM_JJ4ZhiyQau2259IR9fbqOgzM2G4sg4HOOVYHZay067RXJhQCFW-qOyRkRRFUHg");
  }

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

final dashBoardStore = DashBoardStore();

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) => Container(
          width: double.maxFinite,
          child: dashBoardStore.playerMatchesDetails != null
              ? DashBoardCardList()
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class DashBoardCardList extends StatelessWidget {
  const DashBoardCardList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dashBoardStore.playerMatchesDetails.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
          height: 150,
          width: double.maxFinite,
          child: DashBoardCard(
            matchesDetails: dashBoardStore.playerMatchesDetails[index],
          ),
        );
      },
    );
  }
}
