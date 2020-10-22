import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'aboutpage.dart';
import 'info.dart';
import 'profilepage.dart';
import 'PhotoContainerScreen.dart';
import 'VideoContainerScreen.dart';
import 'package:navigation_demo/Navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'main.dart';


class Welcomedrawer extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("Account", Icons.account_circle),
    new DrawerItem("Settings", Icons.settings)
  ];
  @override
  _WelcomedrawerState createState() => _WelcomedrawerState();
}
class Navigationtab extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("Account", Icons.account_circle),
    new DrawerItem("Settings", Icons.settings)
  ];
  @override
  _WelcomedrawerState createState() => _WelcomedrawerState();
}

class _WelcomedrawerState extends State<Welcomedrawer> {
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Demo'),
            bottom: TabBar(
              tabs: [
                Tab(
                  // text: 'Tab1',
                  icon: Icon(Icons.home),
                ),
                Tab(
                  // text: 'Tab2',
                  icon: Icon(Icons.settings),
                ),
                Tab(
                  // text: 'Tab3',
                  icon: Icon(Icons.account_box),
                ),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
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
          body: TabBarView(
            children: [
              aboutpage(),
              Info(),
              profilpage(),
            ],
          )),
    );
  }
}
class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

