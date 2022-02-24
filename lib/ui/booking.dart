import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:tabbar_bottomnav/tabScreen/current.dart';
import 'package:tabbar_bottomnav/tabScreen/upcoming.dart';

class Booking extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAppState();
}

class MyAppState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: AppBar(
            title: InkWell(
              onTap: () {},
              child: Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    'Booking',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          
            backgroundColor: Colors.white,
            bottom: _tabBar(),
          ),
          body: new TabBarView(
            //   physics: NeverScrollableScrollPhysics(),
            children: <Widget>[

              Current(),
              Upcoming()
            ],
          ),
        ),
      ),
    );
  }
}

PreferredSizeWidget _tabBar() {
  return TabBar(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(width: 2.0, color: Colors.blue),
        insets: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
      ),
      indicatorPadding: EdgeInsets.only(left: 12, right: 12),
      indicatorColor: Colors.blue,
      labelColor: Colors.black,
      tabs: [
        Tab(
          text: "Ongoing",
        ),
        Tab(
          icon: Badge(
              badgeColor: Colors.green,
           
              borderRadius: BorderRadius.circular(5),
              position: BadgePosition.topEnd(top: -12, end: -20),
              badgeContent: Text(
                '3',
                style: TextStyle(color: Colors.white),
              ),
              child: Text("Upcoming", style: TextStyle(color: Colors.black))),
        ),
      
      ]);
}
