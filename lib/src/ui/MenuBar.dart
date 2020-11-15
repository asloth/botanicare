import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/HomeScreen.dart';
import 'package:botanicare/src/ui/BitacoraScreen.dart';
import 'package:botanicare/src/ui/PerfilScreen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    Text('hola soy huerto screen'),
    BitacoraScreen(),
    PerfilScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SvgPicture.asset('assets/icons/home_outline.svg'),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SvgPicture.asset(
              'assets/icons/leaf.svg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SvgPicture.asset(
              'assets/icons/bitacora.svg',
            ),
          ),
          Icon(
            Icons.person_outline,
            size: 35,
            color: Colors.white,
          ),
        ],
        color: kPrimaryColor,
        buttonBackgroundColor: kPrimaryColor,
        backgroundColor: kBackgroundColor,
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
