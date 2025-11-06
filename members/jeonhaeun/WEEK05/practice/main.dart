//import해야 다른 디렉토리의 요소 사용 할 수 있다.

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
            '저를 소개합니다',
            //TextStyle(글꼴, 색, 굵기, 크기 등 폰트 설정 가능)
            style: TextStyle(
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        //column은 스크롤 안됨 -> 오버플로우 시 SingleChildScrollView를 사용해 스크롤
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding:EdgeInsets.only(top: 30.0),
                  child: SizedBox(
                    width: 300,
                    height: 250,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/my_profile.gif'),
                      radius: 100,
                    ),
                  ),
                ),

                SizedBox(height: 50,),
                // const ProfileCard(),
                SizedBox(
                  width: 385,
                  child: DescriptionCard(
                    title: 'About me 👾',
                    description:
                        '안녕하세요. 저는 컴퓨터과학과 24학번 전하은입니다. '
                        '\n현재 GDGoC Flutter study 멤버로 활동하고 있습니다!',
                  ),
                ),
                SizedBox(
                  width: 385,
                  child: DescriptionCard(
                    title: '요즘 좋아하는 노래 💿',
                    description:
                        '투어스 - overthinking\n'
                        '엔믹스 - Phoenix\n'
                        '하츠투하츠 - FOCUS\n'
                        '르세라핌 - SPAGHETTI\n',
                  ),
                ),
                SizedBox(
                  width: 385,
                  child: DescriptionCard(
                    title: '숙대 최애 맛집 🤫',
                    description:
                        '리또리또 - 존횬콤보\n'
                        '달볶이 - 튀김세트\n'
                        '더베이크 - 모카번\n'
                        '너드커피 - 바닐라빈라떼\n',
                  ),
                ),
              ],
            ),
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
