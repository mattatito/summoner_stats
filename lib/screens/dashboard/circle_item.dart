import 'package:flutter/material.dart';

class CircleItem extends StatelessWidget {
  const CircleItem({Key key, this.size}) : super(key: key);
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: CircleAvatar(
        radius: size / 2,
      ),
    );
  }
}
