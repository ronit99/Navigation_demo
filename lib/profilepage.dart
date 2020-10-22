import 'package:flutter/material.dart';
import 'tabdetails.dart';

class profilpage extends StatelessWidget {
  const profilpage({Key key}) : super(key: key);

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
              'Profile',
              style: TextStyle(fontSize: 24),
            ),
            FlatButton(
                color: Colors.blueAccent,
                child: Text(
                  "Details",
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Detailspage()));

                }
            ),
          ],

        ),
      ),
    );
  }
}
