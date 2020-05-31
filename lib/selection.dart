//import 'dart:html';
//import 'abcd.dart';
import 'package:flutter/material.dart';
import 'package:las/abcd.dart';

class Selection extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:SelectionPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class SelectionPage extends StatefulWidget {
  @override
  _SelectionPageState createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF21BFBD),
      body:ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0,left:10.0),
            child:Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color:Colors.white,
                  onPressed: (){},
                ),
                //Container(
                  //width: 125.0,
                  //child:Row(children: <Widget>[

                  //],)
                //)
              ],
            ),

          ),
          SizedBox(height: 4.0),
          Padding(padding: EdgeInsets.only(left:40.0),
          child: Row(
            children: <Widget>[
              Text('AGRO DOC',
              style:TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0
              ))
            ],
          ),
          ),

          SizedBox(height: 5.0),
          Padding(padding: EdgeInsets.only(left:40.0),
          child: Row(
            children: <Widget>[
              Text('Choose your plant',
              style:TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0
              ))
            ],
          ),
          ),

          SizedBox(height:30.0),
          Container(
            height:MediaQuery.of(context).size.height -185.0,
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
               ),
               child: ListView(
                 primary: false,
                 padding: EdgeInsets.only(top:45.0),
                 children: <Widget>[
                   Padding(
                     padding: EdgeInsets.only(top:60.0),
                     child:Container(
                        height: MediaQuery.of(context).size.height -300.0,
                        child:ListView(
                              children: [
                              _build('images/carrot.jpeg', 'Carrot'),
                              _build('images/bitterguard.jpeg', 'Bitterguard'),
                              _build('images/beetroot.jpeg', 'Beetroot'),
                              _build('images/cauliflower.jpeg', 'Cauliflower'),
                              _build('images/chilli.jpeg', 'Chilli'),
                              _build('images/garlic.jpeg', 'Garlic'),
                              _build('images/ladiefinger.jpeg', 'Ladiefinger'),
                              _build('images/potato.jpeg', 'Potato'),
                              _build('images/pumpkin.jpeg', 'Pumpkin'),
                              _build('images/tomato.jpeg', 'Tomato'),



                     
   
                 
                   ],
                 )))
        ],
               ),
          ),
        ],

      ),
    );
  }
  Widget _build(String imgpath,String plantname){
    return Padding(
      padding: EdgeInsets.only(left:20.0,right:10.0,top:20.0),
      child:InkWell(
        onTap:(){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context )=> PlantPage(heroTag:imgpath, plantname:plantname)
              ));
        },
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children:[
                  Hero(
                    tag:imgpath,
                    child:Image(
                      image: AssetImage(imgpath),
                      fit:BoxFit.cover,
                      height: 105.0,
                      width: 195.0,
                    )
                  ),
                  SizedBox(width: 10.0),
                  Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       plantname,
                       style:TextStyle(
                         fontFamily: 'Montserrat',
                         fontSize: 20.0,
                         fontWeight: FontWeight.bold
                       )
                     )
                   ] 
                  )
                ]
              ),
            )
          ],
        )
      )
    );
  }
}