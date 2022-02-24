import 'dart:collection';
import 'package:tabbar_bottomnav/ui/account.dart';
import 'package:tabbar_bottomnav/ui/booking.dart';
import 'package:tabbar_bottomnav/ui/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  GlobalKey<ScaffoldState> drawerOpenKey = GlobalKey();

  int currentIndex = 0;

  ListQueue<int> _navigationQueue = ListQueue();

  @override
  void dispose() {
    super.dispose();
  }

  final screens = [
    Home(),
    Booking(),
    Account(),
  ];

  Widget build(BuildContext context) {
    final device = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        if (drawerOpenKey.currentState!.isDrawerOpen) {
          Navigator.of(context).pop();
          return false;
        } else if (currentIndex == 0) {
          return (await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Are you sure?'),
                  content: Text('Do you want to exit the App'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: Text('No'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: Text('Yes'),
                    ),
                  ],
                ),
              )) ??
              false;
        }
        setState(() {
          currentIndex = 0;
        });

        return false;
      },
      child: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) => setState(() {
                  currentIndex = index;
                }),
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            selectedFontSize: 15.0,
            unselectedFontSize: 15.0,
            items: [
              BottomNavigationBarItem(
                tooltip: '',
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  tooltip: '', icon: Icon(Icons.book), label: "Booking"),
              BottomNavigationBarItem(
                tooltip: '',
                icon: Icon(Icons.account_box),
                label: "Account",
              ),
            ]),
      ),
    );
  }
}
