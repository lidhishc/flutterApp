import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'signup.dart';

class TextAndIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:  DecoratedBox(
              position: DecorationPosition.background,
              decoration: BoxDecoration(
                //color: Colors.red,
                image: DecorationImage(
                    image: AssetImage('images/good.jpg'),
                    fit: BoxFit.fill),
              ),
      
      
      child:Column(
        

          children: <Widget>[
               Container(
                    padding:EdgeInsets.fromLTRB(30, 20.0, 0.0, 0.0),
                    child:Row(
                      children: <Widget>[
                       Text(
                        'Hello from ',
                        style:TextStyle(
                            color: Colors.white,
                            fontFamily:'Montserrat',
                            fontSize:30,
                            
                            
                        ) 
                    ),
                    SizedBox(width:10.0),
                    Text('AGRO DOC',
                    style:TextStyle(
                      fontFamily: 'Monteserrat',
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ))
                      ],
                    ),
                  ),



                   Container(
                  padding:EdgeInsets.fromLTRB(0, 220.0, 0.0, 0.0),
                  child: Text('We help you to detect the plant disease',
                  style:TextStyle(
                            color:Colors.amber,
                            fontWeight:FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontFamily:'Montserrat',
                            fontSize: 20,
                          ), ),

                ), 

                Container(
                  padding:EdgeInsets.fromLTRB(0, 10.0, 0.0, 0.0),
                  child: Text(' and provide solutions!!!',
                  style:TextStyle(
                            color:Colors.yellow,
                            fontWeight:FontWeight.bold,
                            fontFamily:'Montserrat',
                            fontStyle: FontStyle.italic,
                            //fontFamily:'Montserrat',
                            fontSize: 20,
                          ), ),

                ), 
                



                    
          
        


          
                SizedBox(height:40.0),
                
                Container(
                  padding:EdgeInsets.fromLTRB(0, 0.0, 0.0, 0),
                  height:40.0,
                  child:Material(
                    borderRadius:BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation:7.0,
                    child:GestureDetector(
                      onTap:(){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                      },
                      child:Center(
                        child:Text(
                          'LOGIN',
                          style:TextStyle(
                            color:Colors.white,
                            fontWeight:FontWeight.bold,
                            fontFamily:'Montserrat'
                          ),
                        ),
                

                        
                      ),
                      
                     ),
                    ),
                ) ,




                SizedBox(height:40.0),
                Container(
                  padding:EdgeInsets.fromLTRB(0, 0, 0.0, 0),
                 
                  height:40.0,
                  child:Material(
                    
                    borderRadius:BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation:7.0,
                    child:GestureDetector(
                      onTap:(){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                      },
                      child:Center(
                        child:Text(
                          'SIGN UP',
                          style:TextStyle(
                            color:Colors.white,
                            fontWeight:FontWeight.bold,
                            fontFamily:'Montserrat'
                          ),
                        ),
                

                        
                      ),
                      
                     ),
                    ),
                ),

                
            
          ],
          
      ),
     

      )
      );

  }


}