import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'Navigation_drawer.dart';
import 'Constants.dart';

void main() => runApp(MaterialApp(
  home: VideoContainerscreen(),
));

class VideoContainerscreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,//
      body: Stack(
        children: <Widget>[
          Container(
            child: Center(
              child: Text(
                'Settings',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ),
        ],
      ),
    );
  }
}