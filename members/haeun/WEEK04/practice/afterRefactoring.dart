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

//   Expanded buildKey({required Color color, required int soundNumber}) {
//     return Expanded(
//       child: Container(
//         color: color,
//         child: TextButton(
//           onPressed: () {
//             playSound(soundNumber);
//           },
//           child: Text(' '),
//         ),
//       ),
//     );
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
//               buildKey(color: Colors.redAccent, soundNumber: 1),
//               buildKey(color: Colors.orangeAccent, soundNumber: 2),
//               buildKey(color: Colors.yellowAccent, soundNumber: 3),
//               buildKey(color: Colors.greenAccent, soundNumber: 4),
//               buildKey(color: Colors.blueAccent, soundNumber: 5),
//               buildKey(color: Colors.indigoAccent, soundNumber: 6),
//               buildKey(color: Colors.deepPurpleAccent, soundNumber: 7),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
