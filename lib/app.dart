
import 'package:flutter/material.dart';
import 'package:ranga_design/Animation/hero_animation.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: HeroAnimation(),
    );
  }
}


