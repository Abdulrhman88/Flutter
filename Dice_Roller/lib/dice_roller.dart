import 'package:flutter/material.dart';
import 'dart:math'; //for rndom number

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//_ mean class is privet
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1; //1 <> 6

      print("Changing imge ...");
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "images/dice-$currentDiceRoll.png",
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: EdgeInsets.only(top: 20,), or sized box like line 41
              foregroundColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 11, 14, 1),
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text("Roll Dice"))
      ],
    );
  }
}
