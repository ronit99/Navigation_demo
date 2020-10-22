import 'package:flutter/material.dart';
import 'tabdetails.dart';
import 'package:navigation_demo/Navigation_drawer.dart';
import 'main.dart';
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigationdrawer(),
      appBar: AppBar(
        title: Text('Side menu'),
      ),
      body: Center(
        child: Text('Side Menu Tutorial'),
      ),
    );
  }
}
void main() => runApp(aboutpage());

class aboutpage extends StatelessWidget {
  const aboutpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home',
              style: TextStyle(fontSize: 24),
            ),
            FlatButton(
                color: Colors.blueAccent,
                child: Text(
                  "Home screen",
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));

                }
            ),
          ],

        ),
      ),
    );
  }
}
