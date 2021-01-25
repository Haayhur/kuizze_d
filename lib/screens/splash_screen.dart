import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    startTime();
    super.initState();
  }

  startTime() async {
    return Timer(Duration(seconds: 5), () {
      // Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
      Navigator.of(context).pushReplacementNamed('/login');
      // print('wahala');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.view_quilt,
                  size: 50,
                  color: Colors.blue,
                ),
                SizedBox(height: 30.0),
                Text(
                  'KUIZZE',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
