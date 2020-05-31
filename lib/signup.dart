import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
/*abstract class AuthImplementation{
  Future<String>SignIn(String email,String password);
  Future<String>SignUp(String email,String password);
  Future<String>getCurrentUser() ;
  Future<void> signOut();
}
class Auth implements AuthImplementation{
  final FirebaseAuth _firebaseAuth= FirebaseAuth.instance;
  Future<String>SignIn(String email,String password) async{
  FirebaseUser user= (await  _firebaseAuth.signInWithEmailAndPassword(email:email,password: password)) as FirebaseUser;
  return user.uid;
  }


  Future<String>SignUp(String email,String password) async{
  FirebaseUser user= (await  _firebaseAuth.createUserWithEmailAndPassword(email:email,password: password)) as FirebaseUser;
  return user.uid;
  }
  

  Future<String>getCurrentUser() async{
    FirebaseUser user=await _firebaseAuth.currentUser();
    return user.uid;
  }


  Future<void> signOut() async{
    _firebaseAuth.signOut();
  }

}*/
/*class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //routes:<String, WidgetBuilder>{
          //'/signup':(BuildContext context) => new Signup()
          //'/login':(BuildContext context) => new Login()
        //},
        title: 'signup',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePages(title: 'SignUp')
      //return Scaffold(
      //appBar: AppBar(title: Text("SIGN UP"))

    );
  }
}*/
class Signup extends StatefulWidget {
  Signup({Key key, this.title}) : super(key: key);
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;
  //final Function toggleview;
   //MyHomePages{this.toggleView});
  @override
  _SignupState createState() => _SignupState();
}
class _SignupState extends State<Signup> {
  
  //TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  //final AuthService _auth=AuthService();
  final  _formKey = GlobalKey<FormState>();
  String _email, _password;
  //String email='';
  //String password='';

  //set _phone(String _phone) {}

  //set _name(String _name) {}

  //set _email(String _email) {}

  //set _email(String _email) {}

  //String _email;

  //set _password(String _password) {}
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        //resizeToAvoidBottomPadding: false,
        body: Center(
          child:SingleChildScrollView(
          child:Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:<Widget>[
            Container(
              child: Stack(
                children:<Widget>[
                  Container(
                    padding:EdgeInsets.fromLTRB(15.0, 35.0, 0.0, 0.0),
                    child:Text(
                        'Hello',
                        style:TextStyle(
                            fontSize:80.0,fontWeight: FontWeight.bold
                        )
                    ),
                  ),
                  Container(
                    padding:EdgeInsets.fromLTRB(15.0, 95.0, 0.0, 0.0),
                    child:Text(
                        'There' ,
                        style:TextStyle(
                            fontSize:80.0,fontWeight: FontWeight.bold
                        )


                    ),
                  ),
                  Container(
                    padding:EdgeInsets.fromLTRB(220.0, 95.0, 0.0, 0.0),
                    child:Text(
                        '.',
                        style:TextStyle(
                            fontSize:80.0,fontWeight: FontWeight.bold,color:Colors.green
                        )
                    ),
                  )
                ],
              ),
            ),
            Container(
              
                padding:EdgeInsets.only(top:20.0,left: 20.0,right:20.0 ),
                child:Form(
                key:_formKey,
                child:Column(
                  children: <Widget>[
                    /*TextFormField(
                      //onChanged: (val){ 
                       // setState(()=>email=val);
                      //}
                    validator: (value)=> value.isEmpty?'please type your name':null,
                    
                 
                    onSaved:(value) =>_name = value.trim() ,
                    decoration:InputDecoration(
                    labelText:'NAME',
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
           
                    TextFormField(
                    validator: (value)=> value.isEmpty?'please type your name':null,
                   
                 
                    onSaved:(value) =>_phone= value.trim() ,
                    decoration:InputDecoration(
                    labelText:'PHONE NUMBER',
                    labelStyle:TextStyle(
                      fontFamily:'Montserrat',
                      fontWeight:FontWeight.bold,
                      color:Colors.grey

                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:Colors.green)
                    )
                  ),
                ),*/


                TextFormField(
                    //validator: (value)=> value.isEmpty?'please type your name':null,
                   
                 
                   // onSaved:(value) =>_email = value.trim() ,
                   validator:(input){
                    if(input.isEmpty){
                      return 'Please type the email';
                    }
                    return null;
                  } ,
                  onSaved:(input) =>_email =input,
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
                    

                TextFormField(
                    //validator: (value)=> value.isEmpty?'please type your name':null,
                   
                 
                   // onSaved:(value) =>_password = value.trim() ,
                   validator:(input){
                    if(input.isEmpty){
                      return 'Please type a password';
                    }
                    return null;
                  } ,
                  onSaved:(input) =>_password =input,
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
                ),   
                             
                    /*TextField(
                      decoration:InputDecoration(
                          labelText:'PLACE',
                          labelStyle:TextStyle(
                              fontFamily:'Montserrat',
                              fontWeight:FontWeight.bold,
                              color:Colors.grey

                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color:Colors.green)
                          )
                      ),
                    ),*/
                    
                    

                    

                    SizedBox(height:40.0),
                    Container(
                      height:40.0,
                      child:Material(
                        borderRadius:BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green,
                        elevation:7.0,
                        child:GestureDetector(
                          onTap:(){
                            signUp();
                            //Navigator.push(context,
                        //MaterialPageRoute(builder: (context) => Signup()),
                     // );
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
                    ) ], )),
            ),

            SizedBox(height:15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Text(
                  'Already have an account?',
                  style: TextStyle(fontFamily:'Montserrat'),
                ),
                SizedBox(width:5.0),
                InkWell(
                  onTap:() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    //Navigator.of(context).pushNamed('/login');
                  },
                  child: Text('Login',
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
     ) )));

  }
  void signUp()async{
  if(_formKey.currentState.validate()){
    _formKey.currentState.save();
  try{
    //var _email;
       // var _password;
  //FirebaseUser user=(await FirebaseAuth.instance.createUserWithEmailAndPassword(email:_email,password:_password)) as FirebaseUser;
    FirebaseUser user=(await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email,password:_password )) as FirebaseUser;
    user.sendEmailVerification();
    Navigator.of(context).pop();
    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context) => Login(),fullscreenDialog: true),);
    //Navigator.push(context,
    //MaterialPageRoute(builder: (context) => Login(user:user)));
  }catch(e){
    print(e.message);
  }
  }
  
  }

}