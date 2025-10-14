// import 'package:flutter/material.dart';
// import 'dart:math';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.cyan[900],
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Text(
//             'SongHaEun [ Dicee ]',
//             style: TextStyle(color: Colors.white),
//           ),
//           backgroundColor: Colors.cyan[900],
//         ),
//         body: DicePage(),
//       ),
//     ),
//   );
// }

// class DicePage extends StatefulWidget {
//   const DicePage({super.key});

//   @override
//   State<DicePage> createState() => _DicePageState();
// }

// class _DicePageState extends State<DicePage> {
//   int leftDiceNumber = 1;
//   int rightDiceNumber = 1;
//   Random random = Random();

//   @override
//   Widget build(BuildContext context) {
//     // build 안에 있어야, 제대로 변수가 변경된다. -> 핫 리로드 할 때는 build 안의 값만 바뀜. -> statelessWidget에 있을 때는

//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextButton(
//                 onPressed: () {
//                   setState(() {
//                     leftDiceNumber = random.nextInt(6) + 1;
//                   });
//                 },
//                 child: Image.asset('images/dice$leftDiceNumber.png'),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextButton(
//                 onPressed: () {
//                   setState(() {
//                     rightDiceNumber = random.nextInt(6) + 1;
//                   });
//                 },
//                 child: Image.asset('images/dice$rightDiceNumber.png'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
