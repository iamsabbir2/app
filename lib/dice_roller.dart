import 'dart:math';

import 'package:flutter/material.dart';

  final randomizer = Random();

class DiceRoller extends StatefulWidget
{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState()
  {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>
{

  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1;
    });
    
  }

  @override
  Widget build(BuildContext context)
  {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
              
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(10),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                ),
              ),
              child: const Text('Roll Dice'),
            ),
          ],
        );
  }
}