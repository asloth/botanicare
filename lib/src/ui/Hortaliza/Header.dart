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
        Navigator.push(
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
            'Añadir Hortaliza',
            style: TextStyle(
              color: Colors.black,
              fontSize: size.width * 0.06,
            ),
          )
        ],
      ),
    );
  }
}

/*
RaisedButton(
      color: kPrimaryColor,
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            Icons.add,
            color: Colors.white,
          ),
          Text(
            'Añadir Hortaliza',
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.05,
            ),
          )
        ],
      ),
    ); 
*/
