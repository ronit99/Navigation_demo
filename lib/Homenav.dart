import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'Navigation_drawer.dart';
import 'Constants.dart';

void main() => runApp(MaterialApp(
  home: Homenav(),
));

class Homenav extends StatefulWidget {
  @override
  _HomenavState createState() => _HomenavState();
}

class _HomenavState extends State<Homenav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,//
      body: Stack(
        children: <Widget>[
          Container(
            child: Center(
              child: Text(
                'Home',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ),
        ],
      ),
    );
  }
}