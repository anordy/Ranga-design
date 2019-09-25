import 'package:flutter/material.dart';
import 'package:ranga_design/pages/food_1.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
        drawer: Drawer(
          child: Container(
            color: Colors.purple,
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: <Widget>[
                FlatButton.icon(icon: Icon(Icons.local_pizza), label: Text('Food1',style: TextStyle(color: Colors.black,fontSize: 25),), onPressed: () {
                   Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Food1()));
                },)
                 
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              'Ranga  framework',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}

