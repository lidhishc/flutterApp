//import 'dart:html';

import 'package:flutter/material.dart';
import 'signup.dart';
import 'selection.dart';
//import 'detail.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:google_sign_in/google_sign_in.dart';
/*class Login extends StatelessWidget {
  const Login({
    Key key,
    @required this.user
  }):super(key:key);
  final FirebaseUser  user;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes:<String, WidgetBuilder>{
          //'/signup':(BuildContext context) => new Signup()
          //'/login':(BuildContext context) => new Login()
        
        },
        title: 'login',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage()
      //return Scaffold(
      //appBar: AppBar(title: Text("SIGN UP"))

    );
  }
}*/
  class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  //final String title;
  @override
  _LoginState createState() => _LoginState();
  }
class _LoginState extends State<Login> {
  //String _email, _password;

  //TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);//GlobalKey<FormState>
   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  //get _email => null;

  ////get _password => null;

  //set _email(String _email) {}

  //String _email;

  //set _password(String _password) {}
  @override
  Widget build(BuildContext context) {
    //String _email;
    return  Scaffold(
   // resizeToAvoidBottomPadding: false,
      body:Center(
        
       
        child:SingleChildScrollView(
        child:Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children:<Widget>[
          Container(
            child: Stack(
              children:<Widget>[
                Container(
                  padding:EdgeInsets.fromLTRB(15.0, 115.0, 0.0, 0.0),
                  child:Text(
                    'Hello',
                    style:TextStyle(
                      fontSize:80.0,fontWeight: FontWeight.bold
                    )
                  ),
                ),
                Container(
                  padding:EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
                  child:Text(
                    'There' ,
                     style:TextStyle(
                       fontSize:80.0,fontWeight: FontWeight.bold
                     )


                   ),
                ),
                Container(
                  padding:EdgeInsets.fromLTRB(220.0, 175.0, 0.0, 0.0),
                  child:Text(
                  '.',
                   style:TextStyle(
                   fontSize:80.0,fontWeight: FontWeight.bold,color:Colors.green,
                   )
                   ),
                )
                   ],
            ),
          ),
          Container(
            padding:EdgeInsets.only(top:35.0,left: 20.0,right:20.0 ),
            child:Form(
            key:_formKey,
            child:Column(
              children: <Widget>[
                TextFormField(
                  //validator: (value)=> value.isEmpty?'please type email':null,
                  validator:(input){
                    if(input.isEmpty){
                      return 'Please type the email';
                    }
                    return null;
                  } ,
                  //onSaved:(input) =>_email =input,
                  //onSaved:(value) =>_email = value.trim() ,
                  decoration:InputDecoration(
                    labelText:'EMAIL',
                    labelStyle:TextStyle(
                      fontFamily:'Montserrat',
                      fontWeight:FontWeight.bold,
                      color:Colors.grey

                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:Colors.green)
                    )
                  ),
                ),

                SizedBox(height:20.0),
                TextFormField(


                  
                  //validator:(value) =>value.isEmpty?'password can\'t be empty':null,
                    
                  //onSaved:(value) => _password =value.trim() ,
                  validator:(input){
                    if(input.isEmpty){
                      return 'Please type password';
                    }
                    return null;
                  } ,
                  //onSaved:(input) =>_password =input,
                  decoration:InputDecoration(
                      labelText:'PASSWORD',
                      labelStyle:TextStyle(
                          fontFamily:'Montserrat',
                          fontWeight:FontWeight.bold,
                          color:Colors.grey

                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color:Colors.green)
                      )
                  ),
                  obscureText: true,
                ),
                  SizedBox(height:5.0),
                  Container(
                    alignment:Alignment(1.0, 0.0),
                    padding:EdgeInsets.only(top:15.0,left:20.0),
                      child:InkWell(
                      child:Text('Forgot Password',
                      style:TextStyle(
                         color:Colors.green,
                         fontWeight:FontWeight.bold,
                         fontFamily:'Montserrat',
                         decoration: TextDecoration.underline

                    ),
                    ),
                    ),

                    ),

                SizedBox(height:40.0),
                Container(
                  height:40.0,
                  child:Material(
                    borderRadius:BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation:7.0,
                    child:GestureDetector(
                      
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
                      onTap:(){
                        
                        //signIn();
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Selection()),
                      );
                      },
                     ),
                    ),
                ) ], )
            )
                     ),

                  SizedBox(height:15.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget>[
                        Text(
                            'New to Agro Doc?',
                            style: TextStyle(fontFamily:'Montserrat'),
                         ),
                        SizedBox(width:5.0),
                        InkWell(
                        onTap:() {
                            // Navigator.of(context).pushNamed('/signup');
                            Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                          },
                         child: Text('Register',
                         style:TextStyle(
                         color:Colors.green,
                         fontFamily: 'Montserrat',
                         fontWeight: FontWeight.bold,
                         decoration:TextDecoration.underline
                         ),

                         ),

                         )
                         ],
                         )
    ],
        )
  ))
      
  ); 
  }
/*Future<void> signIn() async{
  final formState=_formKey.currentState;
  if( formState.validate()){
    formState.save();
  try{
    FirebaseUser user=(await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email,password: _password)) as FirebaseUser;
    Navigator.push(context,MaterialPageRoute(builder: (context) => Dashboard(user: user)));
    //MaterialPageRoute(builder: (context) => Dashboard(user:user)));
  }catch(e){
    print(e.message);
  }
  }
  
  }*/

}
