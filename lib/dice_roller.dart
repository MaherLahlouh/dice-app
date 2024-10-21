import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage='images/dice-1.png';

  void rollDice(){
    var diceValue = Random().nextInt(6)+1;
    setState(() {
      activeDiceImage='images/dice-$diceValue.png';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(activeDiceImage, width: 100),
        const SizedBox(height: 20),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.red,
          ),
          onPressed: rollDice,
          label: const Text('Roll Dice'),
          icon: const Icon(Icons.casino), // Changed to a more relevant icon
        ),
      ],
    );
  }
}
