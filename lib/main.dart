import 'package:flutter/material.dart';
import 'package:summoner_stats/screens/dashboard/dashboard_screen.dart';
import 'package:summoner_stats/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashBoardScreen(),
    );
  }
}
