import 'package:flutter/material.dart';

import 'dice_roller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          decoration:const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.amber,
                Colors.blue
              ],
            ),
          ),
          child: Center(
            child:DiceRoller() ,
          ),
        ),
      ),
    );
  }
}
