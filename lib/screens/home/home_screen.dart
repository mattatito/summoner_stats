import 'package:flutter/material.dart';
import 'package:summoner_stats/screens/home/widgets/input_field.dart';
import 'package:summoner_stats/screens/home/widgets/summoner_tab_card.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              InputField(),
              SummonerTabCard(),
            ],
          ),
        ),
      ),
    );
  }
}