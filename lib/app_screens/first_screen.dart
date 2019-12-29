import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.lightBlueAccent,
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                generateLuckyNumber(),
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 34.0,
                    fontFamily: '8BallScript'),
              ),
              Expanded(child:MaterialButton(
                child: Text(
                  generateLuckyNumber(),
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 34.0,
                      fontFamily: '8BallScript'),
                ),
                onPressed: () => {},
                textColor: Colors.white,
              )
              )],
          ),
        ));
  }

  String generateLuckyNumber() {
    var random = Random();
    int luckynumber = random.nextInt(10);

    return "Lucky number: $luckynumber";
  }
}
