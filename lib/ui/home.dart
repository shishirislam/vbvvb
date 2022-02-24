import 'package:tabbar_bottomnav/tabScreen/current.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text("Home"),
            ),
          ],
        ),
      ),
    );
  }
}
