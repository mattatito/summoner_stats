import 'package:flutter/material.dart';

class CircleItem extends StatelessWidget {
  const CircleItem({Key key, this.size, this.championName}) : super(key: key);
  final double size;
  final String championName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: CircleAvatar(
        radius: size / 2,
          backgroundImage: NetworkImage("http://ddragon.leagueoflegends.com/cdn/11.15.1/img/champion/$championName.png")
      ),
    );
  }
}
