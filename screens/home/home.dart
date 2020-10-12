import 'package:devapp/services/auth.dart';
import 'package:flutter/material.dart';




class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('Easy QR'),
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,

        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('LogOut'),
            onPressed: () async {
              await _auth.signOut();
            },
          ),
        ],

      ),
    body: Center(
    child: FlatButton(
    color: Colors.blue,
    textColor: Colors.white,
    padding: EdgeInsets.all(8.0),
    splashColor: Colors.blueAccent,
    onPressed: () {},
    child: Text(
    "Scan Now",
    style: TextStyle(fontSize: 20.0),
    ),
    ),
    ),
    );
  }
}
