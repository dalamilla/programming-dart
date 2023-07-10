import 'package:flutter/material.dart';
import 'dart:math';

class DiceRollerPage extends StatefulWidget {
  const DiceRollerPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DiceRollerPage> createState() => _DiceRollerPageState();
}

class _DiceRollerPageState extends State<DiceRollerPage> {
  late int _diceNumber = _randonNumber();

  int _randonNumber() {
    Random rnd = Random();
    return 1 + rnd.nextInt(6);
  }

  void _rollDice() {
    setState(() {
      _diceNumber = _randonNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              Text(widget.title, style: const TextStyle(color: Colors.white))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/dice_$_diceNumber.png",
                height: 300, fit: BoxFit.fill),
            const SizedBox(height: 20),
            TextButton(
              child: const Text("Roll"),
              onPressed: _rollDice,
              style: TextButton.styleFrom(
                minimumSize: const Size(150, 50),
                primary: Colors.white,
                backgroundColor: Colors.grey,
                onSurface: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
