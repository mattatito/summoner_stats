import 'package:flutter/material.dart';

class SquareItem extends StatelessWidget {
  const SquareItem({Key key, this.size, this.itemImageId}) : super(key: key);
  final double size;
  final int itemImageId;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      width: size,
      height: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "http://ddragon.leagueoflegends.com/cdn/11.15.1/img/item/$itemImageId.png"),
        ),
        color: Colors.orange,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
