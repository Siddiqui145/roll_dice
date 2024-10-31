import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rolldice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: rolldice,
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle:
                  const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
