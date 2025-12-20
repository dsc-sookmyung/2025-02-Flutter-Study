// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'Widget/description_card.dart';

void main() {
  runApp(const MyProfile());
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            '저를 소개합니다.',
            style: TextStyle(
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w400,
            ),
          ),
          backgroundColor: Colors.white,
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              //const ProfileCard(),
              DescriptionCard(title: 'About Me🫧', description: '안녕하세요 flutter 멤버 송유민입니다. 잘 부탁드립니다.'),
              DescriptionCard(title: '내가 좋아하는 것😊', description: '저는 맛집탐방을 좋아합니다.'),
              DescriptionCard(title: '내가 싫어하는 것😒', description: '저는 당근을 싫어합니다.'),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //TODO: 여기에 Profile Card 구현
      ],
    );
  }
}