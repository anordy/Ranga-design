import 'package:flutter/material.dart';

class DestinationHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30)
        ),
          child:  Hero(
          child: Image.asset(
            'assets/image/ch4.jpg',
            fit: BoxFit.cover,
          ),
          tag: 1,
        ),
        ),
      )
      
    );
  }
}
