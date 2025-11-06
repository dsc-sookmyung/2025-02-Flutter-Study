// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
          centerTitle: true,
          title: const Text(
            '저를 소개합니다.',
            style: TextStyle(
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w400,
            ),
          ),
          leading: Row(
            children: <Widget> [
            Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ],
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ProfileCard(),
              SizedBox(height: 30),
              DescriptionCard(title: 'ABOUT ME', description: '안녕하세요! Flutter 스터디 멤버 홍서영입니다.\n앱 개발과 알고리즘에 관심이 많습니다.\n잘 부탁드립니다.'),
              DescriptionCard(title: 'LIKE', description: '저는 영화보는 것을 좋아합니다.\n인생 영화는 <악마는 프라다를 입는다> 이고,\n인생 드라마는 <스물다섯, 스물하나> 입니다.'),
              DescriptionCard(title: 'DISLIKE', description: '야채를 좋아하지 않습니다.'),
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
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 280,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
        ),
        Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Image.asset(
        'assets/cover.png',
        fit: BoxFit.cover,
        height: 150,
        ),
        ),
      Positioned(
      top: 100,
      left: 0,
      right: 0,
      child: CircleAvatar(
      radius: 55,
      backgroundColor: Colors.white,
      child: CircleAvatar(
      radius: 60,
      backgroundImage: AssetImage('assets/profile.png'),
      ),
      ),
    ),
    ],
    );
  }
}

class DescriptionCard extends StatelessWidget {
  const DescriptionCard({
    super.key,
    required this.title,
    required this.description,
    this.color,
  });

  final String title;
  final String description;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          color: color ?? Color(0xffFFEFF6),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  title,
                  style: TextStyle(fontSize: 20, fontFamily: 'Pretandard', fontWeight: FontWeight.w600, color: Color(0xff191838))),
              Divider(height: 1, color: Colors.black),
              SizedBox(height: 9,),
              Text(
                  description,
                style: TextStyle(fontFamily: 'Pretandard', fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[]);
  }
}
