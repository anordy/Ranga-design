import 'package:flutter/material.dart';
import 'package:ranga_design/modal/fruit_modal.dart';

class FruitsCard extends StatelessWidget {
  final Fruit fruits;

  const FruitsCard({Key key, @required this.fruits}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Colors.transparent,
      boxShadow: [BoxShadow(color: Colors.transparent,offset: Offset(0, 3),blurRadius: 10,spreadRadius: 5)],

      ),
      height: 280,
      width: 180,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 30),
            child: Container(
              height: 250,
              width: 160,
              decoration: BoxDecoration(
                  color: fruits.color,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(90),
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 30),
            child: Text(
              fruits.name,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 30),
            child: Text(
              fruits.text,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 260, left: 30),
            child: Text(
              fruits.money,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white.withOpacity(0.8),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Image.asset(
              fruits.image,
              height: 70,
              width: 70,
            ),
          ),
        ],
      ),
    );
  }
}
