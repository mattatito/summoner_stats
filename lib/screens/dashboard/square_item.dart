import 'package:flutter/material.dart';

class SquareItem extends StatelessWidget {
  const SquareItem({Key key, this.size}) : super(key: key);
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      width: size,
      height: size,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(2)),
    );
  }
}
