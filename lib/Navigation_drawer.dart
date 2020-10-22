import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:navigation_demo/main.dart';
import 'Navigation_drawer.dart';
import 'PhotoContainerScreen.dart';
import 'VideoContainerScreen.dart';
import 'Homenav.dart';



void main() => runApp(MaterialApp(
  home: Navigationdrawer(),
));
class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}
 class Navigationdrawer extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("Account", Icons.account_circle),
    new DrawerItem("Settings", Icons.settings)
  ];
  @override
  _NavigationdrawerState createState() => _NavigationdrawerState();
}

class _NavigationdrawerState extends State<Navigationdrawer> {
  int _selectedDrawerIndex = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new Home();
      case 1:
        return new PhotoContainerScreen();
      case 2:
        return new VideoContainerscreen();
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
          new ListTile(
            leading: new Icon(d.icon),
            title: new Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelectItem(i),
          )
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(  decoration: BoxDecoration(color: Colors.lightBlue),
              margin: EdgeInsets.only(bottom: 40.0),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image:
                        NetworkImage("https://via.placeholder.com/150"))),
              ),
              accountName: new Container(
                  child: Text(
                    'Ronit patel',
                    style: TextStyle(color: Colors.black),
                  )),
              accountEmail: new Container(
                  child: Text(
                    'Ronit@gmail.com',
                    style: TextStyle(color: Colors.black),
                  )),),
            new Column(children: drawerOptions)
          ],
        ),

      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}