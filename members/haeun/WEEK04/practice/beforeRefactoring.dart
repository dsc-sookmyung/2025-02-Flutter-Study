// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

// void main() {
//   runApp(const Xylophone());
// }

// class Xylophone extends StatelessWidget {
//   const Xylophone({super.key});

//   void playSound(int soundNum) {
//     final player = AudioPlayer();
//     player.play(AssetSource('note$soundNum.wav'));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Expanded(
//                 child: Container(
//                   color: Colors.redAccent,
//                   child: TextButton(
//                     onPressed: () {
//                       playSound(1);
//                     },
//                     child: Text(' '),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   color: Colors.deepOrangeAccent,
//                   child: TextButton(
//                     onPressed: () {
//                       playSound(2);
//                     },
//                     child: Text(' '),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   color: Colors.yellowAccent,
//                   child: TextButton(
//                     onPressed: () {
//                       playSound(3);
//                     },
//                     child: Text(' '),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   color: Colors.greenAccent,
//                   child: TextButton(
//                     onPressed: () {
//                       playSound(4);
//                     },
//                     child: Text(' '),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   color: Colors.blueAccent,
//                   child: TextButton(
//                     onPressed: () {
//                       playSound(5);
//                     },
//                     child: Text(' '),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   color: Colors.indigo,
//                   child: TextButton(
//                     onPressed: () {
//                       playSound(6);
//                     },
//                     child: Text(' '),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   color: Colors.deepPurpleAccent,
//                   child: TextButton(
//                     onPressed: () {
//                       playSound(7);
//                     },
//                     child: Text(' '),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
