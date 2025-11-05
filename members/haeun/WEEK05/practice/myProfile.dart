// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     const String profileAsset = 'images/songhaeun.jpg';
//     const String backgroundAsset = 'images/background.png';
//     const Color primaryColor = Color(0xFF403329);
//     const Color primaryTransColor = Color(0x80403329);
//     const Color cardColor = Color(0xFFFAF8F2);

//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color(0xFFF5F1E4),
//         appBar: AppBar(
//           backgroundColor: const Color(0xFFFAF8F2),
//           surfaceTintColor: Colors.transparent, // M3에서 색 왜곡 방지
//           elevation: 5, // 그림자 유지
//           leading: Icon(Icons.chevron_left_rounded, color: Color(0xFF403329)),
//           shadowColor: Color(0x4D403329), // 그림자 명확하게 보이게
//           title: const Text(
//             "Introduce Myself",
//             style: TextStyle(
//               color: const Color(0xFF403329), // 배경이 밝으니까 흰색 대신 검정
//               fontFamily: 'Electrolize',
//               fontSize: 20,
//               letterSpacing: 1,
//             ),
//           ),
//           centerTitle: true,
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Card(
//                 elevation: 4.0,
//                 shadowColor: Color(0x80403329), // 그림자 명확하게 보이게
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//                 color: cardColor, // 카드의 색상을 흰색 배경색과 통일 (선택 사항)
//                 margin: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     // 1. 배경과 프로필 이미지를 겹치는 부분 (Stack)
//                     Stack(
//                       alignment: Alignment.bottomLeft,
//                       children: <Widget>[
//                         // A. 배경 이미지
//                         _buildBackground(),

//                         // B. 프로필 이미지 (왼쪽, 아래쪽 여백으로 위치 조정)
//                         Padding(
//                           padding: const EdgeInsets.only(
//                             left: 10.0,
//                             bottom: 10.0,
//                           ),
//                           child: _buildProfile(primaryColor, cardColor),
//                         ),
//                       ],
//                     ),

//                     // 2. 텍스트 정보
//                     const Padding(
//                       padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'EunHaSong',
//                             style: TextStyle(
//                               fontFamily: 'Electrolize',
//                               fontSize: 20.0,
//                               letterSpacing: 2.0,
//                               color: primaryColor,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(height: 5),
//                           Text(
//                             'Department of Artificial Intelligence',
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: primaryTransColor,
//                               fontFamily: 'Electrolize',
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: double.infinity,
//                 child: Card(
//                   elevation: 4.0,
//                   shadowColor: Color(
//                     0xFF403329,
//                   ).withOpacity(0.3), // 그림자 명확하게 보이게
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15.0),
//                   ),
//                   color: cardColor,
//                   margin: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 20.0),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 20.0,
//                       vertical: 15.0,
//                     ),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         _widgetText(20.0, primaryColor, 'Playlist 🎶'),
//                         _widgetText(
//                           12.0,
//                           primaryTransColor,
//                           'Songs that heal you while listening to them',
//                         ),
//                         const SizedBox(height: 10.0),
//                         Divider(thickness: 1, height: 1, color: primaryColor),
//                         const SizedBox(height: 10.0),
//                         _widgetText(
//                           12.0,
//                           primaryColor,
//                           'SPINNIN’ON IT - NIMIXX ',
//                         ),
//                         const SizedBox(height: 5.0),
//                         _widgetText(
//                           12.0,
//                           primaryColor,
//                           'Dear, My Feelings - IVE   ',
//                         ),
//                         const SizedBox(height: 5.0),
//                         _widgetText(
//                           12.0,
//                           primaryColor,
//                           'FOCUS - Hearts2Hearts',
//                         ),
//                         const SizedBox(height: 5.0),
//                         _widgetText(
//                           12.0,
//                           primaryColor,
//                           'DIFFERENT - LE SSERAIM',
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 width: double.infinity,
//                 child: Card(
//                   elevation: 4.0,
//                   shadowColor: Color(
//                     0xFF403329,
//                   ).withOpacity(0.3), // 그림자 명확하게 보이게
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15.0),
//                   ),
//                   color: cardColor,
//                   margin: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 20.0),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 20.0,
//                       vertical: 15.0,
//                     ),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         _widgetText(20.0, primaryColor, 'My Favorite 🤎'),
//                         _widgetText(
//                           12.0,
//                           primaryTransColor,
//                           'Let’s enjoy this together!',
//                         ),
//                         const SizedBox(height: 10.0),
//                         Divider(thickness: 1, height: 1, color: primaryColor),
//                         const SizedBox(height: 10.0),
//                         _widgetText(12.0, primaryColor, '지하철에서 음악 듣기'),
//                         const SizedBox(height: 5.0),
//                         _widgetText(12.0, primaryColor, '소설 정주행하기'),
//                         const SizedBox(height: 5.0),
//                         _widgetText(12.0, primaryColor, '향수 시향하기'),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 width: double.infinity,
//                 child: Card(
//                   elevation: 4.0,
//                   shadowColor: Color(
//                     0xFF403329,
//                   ).withOpacity(0.3), // 그림자 명확하게 보이게
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15.0),
//                   ),
//                   color: cardColor,
//                   margin: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 20.0),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 20.0,
//                       vertical: 15.0,
//                     ),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         _widgetText(20.0, primaryColor, 'My Least Favorite 🤍'),
//                         _widgetText(
//                           12.0,
//                           primaryTransColor,
//                           'Not really my thing.',
//                         ),
//                         const SizedBox(height: 10.0),
//                         Divider(thickness: 1, height: 1, color: primaryColor),
//                         const SizedBox(height: 10.0),
//                         _widgetText(12.0, primaryColor, '야채를 먹는걸 싫어합니다...'),
//                         const SizedBox(height: 5.0),
//                         _widgetText(12.0, primaryColor, '정적을 참을 수 없어합니다...'),
//                         const SizedBox(height: 5.0),
//                         _widgetText(
//                           12.0,
//                           primaryColor,
//                           '과제를 노가다하는 걸 좋아하지 않습니다...',
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 width: double.infinity,
//                 child: Card(
//                   elevation: 4.0,
//                   shadowColor: Color(
//                     0xFF403329,
//                   ).withOpacity(0.3), // 그림자 명확하게 보이게
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15.0),
//                   ),
//                   color: cardColor,
//                   margin: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 20.0),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 20.0,
//                       vertical: 15.0,
//                     ),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         _widgetText(20.0, primaryColor, 'Contact List 💌'),
//                         _widgetText(
//                           12.0,
//                           primaryTransColor,
//                           'Feel free to reach out here.',
//                         ),
//                         const SizedBox(height: 10.0),
//                         Divider(thickness: 1, height: 1, color: primaryColor),
//                         const SizedBox(height: 10.0),
//                         _widgetText(
//                           12.0,
//                           primaryColor,
//                           'Gmail : shaeun03290@sookmyung.ac.kr',
//                         ),
//                         const SizedBox(height: 5.0),
//                         _widgetText(
//                           12.0,
//                           primaryColor,
//                           'Instagram : @_1s.7h_5e',
//                         ),
//                         const SizedBox(height: 5.0),
//                         _widgetText(
//                           12.0,
//                           primaryColor,
//                           'Phone : 010-6300-5850',
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildBackground() {
//     return ClipRRect(
//       borderRadius: const BorderRadius.only(
//         topLeft: Radius.circular(15.0),
//         topRight: Radius.circular(15.0),
//       ),
//       child: Image(image: AssetImage('images/background.png')),
//     );
//   }

//   Widget _buildProfile(Color primaryColor, Color cardColor) {
//     const double size = 90.0;

//     return Container(
//       width: size,
//       height: size,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: const Color(0xFFFAF8F2),
//         border: Border.all(color: cardColor, width: 3.0),
//       ),
//       child: ClipOval(child: Image(image: AssetImage('images/songhaeun.jpg'))),
//     );
//   }

//   Widget _widgetText(double fontSize, Color primaryColor, String text) {
//     return Text(
//       text,
//       style: TextStyle(
//         fontFamily: 'Electrolize',
//         fontSize: fontSize,
//         letterSpacing: 2.0,
//         color: primaryColor,
//         fontWeight: FontWeight.bold,
//       ),
//     );
//   }
// }
