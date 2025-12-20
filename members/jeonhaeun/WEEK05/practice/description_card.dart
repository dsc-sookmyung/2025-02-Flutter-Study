import 'package:flutter/material.dart';

//디렉토리와 다트파일을 새로 만들어 클래스를 main파일과 분리 할 수 있다.
class DescriptionCard extends StatelessWidget {
  const DescriptionCard({
    super.key,
    //title과 description은 필수, color는 선택
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
      //sizedbox를 사용해도 되지만 컨테이너의 패딩 온리 바텀을 설정해도 간격을 띄울 수 있다.
      padding: EdgeInsets.only(bottom: 20.0),
      child: Container(
        decoration: BoxDecoration(
          //color가 null이면 F3F8FF를 컬러로 함
          color: color ?? Color(0xffF3F8FF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            //column은 세로, row는 가로
            //crossAxisAlignment는 세로축을 설정, start로 왼쪽정렬
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                //변수로 설정
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                  //직접 16진수로 색상값 설정 가능
                  color: Color(0xff191838),
                ),
              ),
              Divider(height: 1, color: Colors.black),
              SizedBox(height: 9),
              Text(
                description,
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
