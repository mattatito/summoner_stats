import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Material(
        borderRadius: BorderRadius.circular(20.0),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            style: TextStyle(
              fontSize: 18,
            ),
            decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                ),
                border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
