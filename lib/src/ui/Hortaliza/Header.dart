import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      //olor: Colors.white,
      color: kPrimaryColor,
      height: size.height - 500,
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
