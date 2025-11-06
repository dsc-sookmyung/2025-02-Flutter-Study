import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.only(left: 20.0, right: 20.0,bottom: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: color ?? Color(0xffF3F8FF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title, style: TextStyle(
                  fontSize: 20, fontFamily: 'Pretendard', fontWeight: FontWeight.w600, color: Color(0xff19183B)
                ),
              ),
              Divider(height: 1, color: Colors.black,),
              SizedBox(height: 9,),
              Text(
                description,
                style: TextStyle(fontSize: 16, fontFamily: 'Pretendard', fontWeight: FontWeight.w400),
              )
            ], // children
          ),
        ),
      ),
    );
  }
}