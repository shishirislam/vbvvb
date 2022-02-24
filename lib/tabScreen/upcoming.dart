import 'package:tabbar_bottomnav/tabScreen/current.dart';
import 'package:flutter/material.dart';

class Upcoming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {},
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
               return OnBoarding(title: 'Problem...Bottom Navigation bar show ta chachi na',);
              }));
            },
            child: Container(
              child: Text(
                "Click Me-Upcoming",
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
