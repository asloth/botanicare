import 'package:botanicare/src/ui/HomeScreen.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return FlatButton(
      color: Colors.white,
      onPressed: () {
        Navigator.pop(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
      child: Row(
        children: [
          Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          SizedBox(width: size.width * 0.02),
          Text(
            'Modificar Hortaliza',
            style: TextStyle(
              color: Colors.black,
              fontSize: size.width * 0.05,
            ),
          )
        ],
      ),
    );
  }
}
