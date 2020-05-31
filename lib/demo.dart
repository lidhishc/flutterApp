//import 'dart:html';



//import 'commonplantdeseases.dart';
//import 'developers.dart';
//import 'history.dart';
//import 'howtouse.dart';
//import 'seasons.dart'; 
//import 'camera.dart'; 
/*import 'profile.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
 
  
];

List<Widget> _tiles = const <Widget>[
  const _Example01Tile(Colors.white, Icons.person),
  const _Example01Tile(Colors.white, Icons.info),
  const _Example01Tile(Colors.white, Icons.camera),
  const _Example01Tile(Colors.white, Icons.people),
  const _Example01Tile(Colors.white, Icons.send),
  const _Example01Tile(Colors.white, Icons.help),
  const _Example01Tile(Colors.white, Icons.wb_sunny),
  const _Example01Tile(Colors.white, Icons.settings),
  
];

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('DASHBOARD',style:TextStyle(color: Color(0XFF4DD0E1))),
          backgroundColor:Color(0xFFFFFFFF),
        ),
        body: new Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: new StaggeredGridView.count(
              crossAxisCount: 2,
              staggeredTiles: _staggeredTiles,
              children: _tiles,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              padding: const EdgeInsets.all(4.0),
            )));
  }
}
class _Example01Tile extends StatelessWidget {
  const _Example01Tile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap:(){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                      },
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Icon(
              iconData,
              color: Color(0XFF4DD0E1),
              size: 40.0,
            ),
          ),
        ),
      ),
    );
  }
}

*/




