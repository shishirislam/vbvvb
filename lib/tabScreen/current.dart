import 'package:flutter/material.dart';

class Current extends StatelessWidget {
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
                "Click Me-Ongoing",
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OnBoarding extends StatelessWidget {
  final String title;

  const OnBoarding({Key? key, required this.title}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OnBoarding Screen'),
      ),
      body: Center(
          child: Text(title)),
    );
  }
}
