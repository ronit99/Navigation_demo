import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'Navigation_drawer.dart';
import 'tabbardrawer.dart';


void main() => runApp(MaterialApp(
  home: Home(),

));

class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,//
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,

            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    width: 190,
                  height: 40,// match_parent
                    child: FlatButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pushReplacement(MaterialPageRoute(builder: (context) => Navigationdrawer()));
              },
              child: Text(
                'Navigation Drawer',
                style: TextStyle(color: Colors.white),
              ),
             ),),
            SizedBox(
              width: 190,
              height: 10,
            ),
                SizedBox(
                  width: 190,
                  height: 40,// match_parent
                  child: FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).pushReplacement(MaterialPageRoute(builder: (context) => Welcomedrawer()));
                    },
                    child: Text(
                      'Tab bar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}







