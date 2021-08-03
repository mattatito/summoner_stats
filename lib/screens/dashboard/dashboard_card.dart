import 'package:flutter/material.dart';

class DashBoardCard extends StatelessWidget {
  const DashBoardCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [borderContainer(), contentContainer()],
      ),
    );
  }

  Widget borderContainer() {
    return Container(
      height: double.infinity,
      width: 50,
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "V",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            width: 20,
            height: 1,
            color: Colors.white,
          ),
          Text(
            "12:30",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  Widget contentContainer() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                championAvatar(44),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [itemsContainer(20), itemsContainer(20)],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [championAvatar(20), championAvatar(20)],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "99 / 99 / 99",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                itemsContainer(30),
                itemsContainer(30),
                itemsContainer(30),
                itemsContainer(30),
                itemsContainer(30),
                itemsContainer(30),
                championAvatar(30)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget championAvatar(double size) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: CircleAvatar(
        radius: size / 2,
      ),
    );
  }

  Widget itemsContainer(double size) {
    return Container(
      margin: EdgeInsets.all(2),
      width: size,
      height: size,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(2)),
    );
  }
}
