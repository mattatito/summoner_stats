import 'package:flutter/material.dart';
import 'dashboard_card_border.dart';
import 'dashboard_card_content.dart';


class DashBoardCard extends StatelessWidget {
  const DashBoardCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [DashBoardCardBorder(), DashBoardCardContent()],
      ),
    );
  }
}
