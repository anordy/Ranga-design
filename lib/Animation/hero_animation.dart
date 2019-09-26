import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:ranga_design/Animation/destination_hero..dart';

class HeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    timeDilation = 5;
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => DestinationHero()));
        },
        child: Container(
            child: GridView(
          children: <Widget>[
            GridTile(
              child: Hero(
                child: Image.asset(
                  'assets/image/ch4.jpg',
                  fit: BoxFit.cover,
                ),
                tag: 1,
              ),
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                leading: Icon(Icons.shop),
                title: Text('Striker'),
                trailing: Icon(Icons.fastfood),
              ),
            ),
            GridTile(
              child: Hero(
                child: Image.asset(
                  'assets/image/ch4.jpg',
                  fit: BoxFit.cover,
                ),
                tag: 2,
              ),
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                leading: Icon(Icons.shop),
                title: Text('Striker'),
                trailing: Icon(Icons.fastfood),
              ),
            ),
            GridTile(
              child: Hero(
                child: Image.asset(
                  'assets/image/ch4.jpg',
                  fit: BoxFit.cover,
                ),
                tag: 3,
              ),
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                leading: Icon(Icons.shop),
                title: Text('Striker'),
                trailing: Icon(Icons.fastfood),
              ),
            ),
          ],
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
        )),
      ),
    );
  }
}
