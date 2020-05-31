/*import 'package:flutter/material.dart';
import 'signup.dart';
import 'mapping.dart';
class HomePage extends StatefulWidget {
  HomePage({
  this.auth,
  this.onSignedOut
  });
  final AuthImplementation auth;
  final VoidCallback onSignedOut;
  @override
  State<StatefulWidget>createState(){
    return  _HomePageState();
  }
   
}

class _HomePageState extends State<HomePage> {
  void _logoutUser() async{
    try{
        await widget.auth.signOut();
        widget.onSignedOut();
    }
    catch(e){
        print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:new AppBar(
        title: Text("Home"),
      ),
      body:
      new IconButton(
     icon: Icon(Icons.local_car_wash),
     onPressed: _logoutUser,
      ) ,
      
      );
  }
}*/