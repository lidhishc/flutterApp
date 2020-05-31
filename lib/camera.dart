//import 'dart:ffi';
//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ffi';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
//import 'android.support.Annotation';
//import 'dart:convert';
//import 'package:http/http.dart' as http;
 
 
class Camera extends StatefulWidget {
   @override
   _CameraState createState() => _CameraState();
 }

class _CameraState extends State<Camera> {
  File imageFile;
  _openGallery(BuildContext context) async{
    var picture =await ImagePicker.pickImage(source:ImageSource.gallery); 
    this.setState(() {
      imageFile =picture;
    });
    Navigator.of(context).pop();}
  _openCamera(BuildContext context) async {
    var picture =await ImagePicker.pickImage(source:ImageSource.camera); 
    this.setState(() {
      imageFile =picture;
    });
    Navigator.of(context).pop();

  }
  Future<Void>_showChoiceDialo(BuildContext context){
    return showDialog(context: context,builder: (BuildContext context){
      return AlertDialog(
        title: Text("Make a choice"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("gallery"),
                onTap: (){
                  _openGallery(context);
                },
              ),
              Padding(padding: EdgeInsets.all(0.0),),
              GestureDetector(
                child: Text("Camera"),
                onTap: (){
                  _openCamera(context);
                },
              )
            ],
          ),
          
        ),

      );
    });
  }
  Widget _decideImageView(){
    if(imageFile == null){
      return Text("NO image selected");
    }
    else{
       return Image.file(imageFile,width:400,height:400);
    }

  }
  @override
  Widget build(BuildContext context){
    //var mainAxisAlignment;
        return Scaffold(
          appBar:AppBar(
            title:Text("camera"),
            backgroundColor: Color(0xFF7A9BEE),
    
          ),
          body:Container(
            child:Center(
            child:Column(
              mainAxisAlignment:MainAxisAlignment.end,
              children:<Widget>[
              
              _decideImageView(),
              RaisedButton(onPressed: (){
                  _showChoiceDialo(context);
            },child: Text("SELECT IMAGE"),),


              RaisedButton(onPressed: (){
                  
            },child: Text("UPLOAD IMAGE"),),
            
          ],
        ),
        ),
      ),
    );
  }
}