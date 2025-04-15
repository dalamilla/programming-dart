import 'package:dice_roller/screens/dice_roller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roller',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const DiceRollerPage(title: 'Dice Roller'),
    );
  }
}
