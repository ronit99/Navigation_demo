

import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'Navigation_drawer.dart';
import 'Constants.dart';

void main() => runApp(MaterialApp(
  home: PhotoContainerScreen(),
));

class PhotoContainerScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,//
        body: Stack(
        children: <Widget>[
          Container(
            child: Center(
              child: Text(
                'Account',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ),

        ],
        ),
    );
  }
}