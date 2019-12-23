import 'package:first_flutter/app_screens/first_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      new myFlutterApp()
        );


}

class myFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "my flutter app",
        home: Scaffold(
          appBar: AppBar(
            title: Text("My first app screen"),
              ),
          body: FirstScreen()
        )
    )
    ;
  }

}