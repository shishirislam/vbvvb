import 'package:tabbar_bottomnav/tabScreen/current.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return OnBoarding(
                title:
                    'Ami ayrokom chacchi vaiya...bottom navigation bar na show hok eta chaichi',
              );
            }));
          },
          child: Center(
            child: Text(
              "Account-click me",
              style: TextStyle(color: Colors.green, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
