import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Fruit {
  final String name;
  final String text;
  final String money;
  final String image;
  final Color color;

  Fruit({@required this.color, 
      @required this.image,
      @required this.name,
      @required this.text,
      @required this.money});
}

List<Fruit> fruit = <Fruit>[
  Fruit(
      money: '453 Tshs',
      name: 'Breakfast',
      text: 'Bread\nbutter snacks\norder ',
      image: 'assets/icon/avocado.png', color: Colors.deepOrange),
  Fruit(
      money: '563 Tshs',
      name: 'Lunch',
      text: 'Mango\njuice murua\norder',
      image: 'assets/icon/diamond.png',
      color: Colors.blue),
  Fruit(
      money: '765 Tshs',
      name: 'Snack',
      text: 'Avocado\nfrom Morogoro\norder',
      image: 'assets/icon/football.png',
      color: Colors.purple),
];
