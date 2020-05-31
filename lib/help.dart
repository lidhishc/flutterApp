import 'package:flutter/material.dart'; 
class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PROFILE'),


      ),
      body: Column(


          children: <Widget>[


            







           /* RaisedButton(

              color: Colors.red,
              textColor: Colors.white,
            //highlightColor: Colors.green,
              highlightElevation: 25.0,
             //`Icon` to display
            //`Text` to display
              splashColor: Colors.yellowAccent,
              onPressed: () {
                Navigator.pop(context);
            },
              child: Text(
              "GO BACK",
              style: TextStyle(
              fontSize:24.0,
            ),

          ),
        ),*/
        Container(
              padding:EdgeInsets.fromLTRB(15.0, 10, 0.0, 0.0),
              child:Text(
              'Your Profile',
              style:TextStyle(
                fontSize:30.0,fontWeight: FontWeight.bold
                ),
              ),
            ),

            
       ],
      ),
      );
  }
}


  
  