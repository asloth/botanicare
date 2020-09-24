import 'package:botanicare/src/ui/HomeScreen.dart';
import 'package:botanicare/src/ui/GardenScreen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key key}) : super(key: key);

  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  final pages = [
    HomeScreen(),
    Text('hola soy lista'),
    GardenScreen(),
    Text('hola soy alarmas'),
    Text('hola soy perfil'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.local_florist,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.notifications,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
        ],
        color: Color.fromRGBO(62, 212, 0, 83),
        buttonBackgroundColor: Color.fromRGBO(62, 212, 0, 83),
        backgroundColor: Color.fromRGBO(215, 219, 213, 86),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}
