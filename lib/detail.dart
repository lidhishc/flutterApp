import 'package:flutter/material.dart';
import 'camera.dart';
import 'help.dart';
import 'profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({
    Key key,
    @required this.user
  }):super(key:key);
  final FirebaseUser  user;
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('DASH BOARD${widget.user.email}'
            ),
          /*actions: <Widget>[
          PopupMenuButton<int>(
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<int>>[
                PopupMenuItem(
                  value: 0,
                  child: Text('Login'),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text('Einstellungen'),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text('Download-Container'),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text('Soziale Netzwerke'),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text('FAQ'),
                ),
              ];
            },
          ),
          ],*/
      ),
      body: IconTheme.merge(
        data: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          children: <Widget>[
           
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.camera_alt,
                      text: 'Camera',
                      //color:Colors.blue,
                     
                         onTap:(){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Camera()),
                        );
                      
                      },
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.person,
                      text: 'Profile',
                      onTap: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()),
                        );
                      
                      },
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.help,
                      text: 'Help',
                      onTap: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Help()),
                        );
                      
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.people,
                      text: 'Developers',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.info,
                      text: 'Diseases',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.wb_sunny,
                      text: 'Season',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.history,
                      text: 'History',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.person,
                      text: '',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.book,
                      text: '',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
   // h//ome: DashboardScreen();
  
  }
}
class DashboardButton extends StatelessWidget {
  const DashboardButton({
    Key key,
    @required this.icon,
    @required this.text,
    this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FractionallySizedBox(
              widthFactor: 0.6,
              child: FittedBox(
                child: Icon(icon),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textScaleFactor: 0.8,
            ),
            SizedBox(height: 4.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(height: 1.0),
            ),
          ],
        ),
      ),
    );
  }
}

//class Dashboard extends StatelessWidget {
 // Dashboard(FirebaseUser user);

  
 // @override
 // Widget build(BuildContext context) {
  //  return MaterialApp(
  //    debugShowCheckedModeBanner: false,
  //    theme: ThemeData(
  //      primaryColor: const Color(0xFF578B81),
   ////     dividerColor: Colors.grey,
  //    ),
      
    //);
  //}
//}

/*class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widget;
        return Scaffold(
          appBar: AppBar(
            title: Text('DASH BOARD${widget.user.email}'),
        actions: <Widget>[
          PopupMenuButton<int>(
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<int>>[
                PopupMenuItem(
                  value: 0,
                  child: Text('Login'),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text('Einstellungen'),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text('Download-Container'),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text('Soziale Netzwerke'),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text('FAQ'),
                ),
              ];
            },
          ),
        ],
      ),
      body: IconTheme.merge(
        data: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          children: <Widget>[
           
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.camera_alt,
                      text: 'Camera',
                      //color:Colors.blue,
                     
                         onTap:(){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Camera()),
                        );
                      
                      },
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.person,
                      text: 'Profile',
                      onTap: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()),
                        );
                      
                      },
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.help,
                      text: 'Help',
                      onTap: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Help()),
                        );
                      
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.people,
                      text: 'Developers',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.info,
                      text: 'Diseases',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.wb_sunny,
                      text: 'Season',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.history,
                      text: 'History',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.person,
                      text: '',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.book,
                      text: '',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
