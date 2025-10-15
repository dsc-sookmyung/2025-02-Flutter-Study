import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Dicee', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Center(
       child: Row(
         children: <Widget>[
          Expanded(
            child: Padding(
               padding: const EdgeInsets.all(16.0),
               child: TextButton(
                 onPressed: () {
                   setState(() {
                     leftDiceNumber = random.nextInt(6) + 1;
                   });
                 },
                 child: Image.asset('images/dice$leftDiceNumber.png'),
               ),
             ),
           ),
           Expanded(
             child: Padding(
               padding: const EdgeInsets.all(16.0),
               child: TextButton(
                 onPressed: () {
                   setState(() {
                     rightDiceNumber = random.nextInt(6) + 1;
                   });
                 },
                 child: Image.asset('images/dice$rightDiceNumber.png'),
               ),
             ),
           ),
         ],
       ),
     );
   }
 }
