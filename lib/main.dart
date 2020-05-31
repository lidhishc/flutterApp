import 'package:flutter/material.dart';
//import 'dart:ui';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart'; 
//import 'package:image_picker/image_picker.dart';   
import 'textandicon.dart';
//import 'loginpage.dart';
//import 'signup.dart';
//import 'homepage.dart';
//import'mapping.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      //home:MappingPage(auth Auth(),),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: TextAndIconButton(),
      //routes: <String, WidgetBuilder>{
        //'/signup': (BuildContext context) => new Signup(),

        //'/login': (BuildContext context) =>new Login(),

      //},
    );
  
  
  }
}