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
              // const ProfileCard(),
              DescriptionCard(title: 'About me 💭', description: '안녕하세요, Flutter 멤버 송서현입니다!ヾ(^▽^*)))', color: Color(0xff9bc0f4),),
              DescriptionCard(
                  title: 'About my playlist 🎶', description: '💙 Blue Valentine-NMIXX\n💛 The Alibi-Dylan\n🖤 Mantra-JENNIE\n🩷 Break My Heart-Dua Lipa\n🩵 Cruel Summer-Taylor Swift'
              ),
              DescriptionCard(title: 'About my CAT 🐈', description: '라떼\n2020-05-30에 🏠 입성!\n언니 담요를 좋아함🤗'),
              DescriptionCard(title: 'Contact me 🤙', description: '📷 Instagram | @sh_sallysz\n🐈‍⬛ Github | @Hiimynameiss'),
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