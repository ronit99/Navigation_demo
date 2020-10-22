import 'package:flutter/material.dart';

class Detailspage extends StatelessWidget {
  const Detailspage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.all(16),
        child: Center(
          child: Text(
            'Details',
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
