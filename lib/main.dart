import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    title: 'Stateful widgets',
    home: FavoriteCity(),
  ));
}

class FavoriteCity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }

}

class _FavoriteCityState extends State<FavoriteCity> {

  String favCity = "";
  bool isDone = false;
  String bigcity = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Widget",),),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String user){
                setState(() {
                  favCity = user;
                  bigcity = user;
                });

              },

              onChanged: (String user){
                setState(() {
                  favCity = user;

                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("Your favorite city is $favCity", style: TextStyle(fontSize: 20.0),)
              ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                bigcity,
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: "8BallScript"
                ),
              )
            )

          ],
        ),
      ),
    );
  }


}
