import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('I Am Rich'),
        backgroundColor: Colors.lightGreenAccent[100],
      ),
      backgroundColor: Colors.blueGrey[100],
      body: Center(
        child: Image(
          image: NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ-u5dF-N3tBeUoumPCA0IAZBaLD8BWbSFew&s",
          ),
        ),
      ),
    ),
  ),
);
