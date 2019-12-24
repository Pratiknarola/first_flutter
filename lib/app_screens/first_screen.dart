import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Text(
          generateLuckyNumber(),
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.white, fontSize: 34.0, fontFamily: '8BallScript'),
        ),
      ),
    );
  }

  String generateLuckyNumber() {
    var random = Random();
    int luckynumber = random.nextInt(10);

    return "Lucky number: $luckynumber";
  }
}
