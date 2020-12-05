import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/HuertoScreen.dart';

class AgregarActividad extends StatelessWidget {
  const AgregarActividad({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return RaisedButton(
      color: kBackgroundColor,
      onPressed: () {
        Navigator.pop(
          context,
          MaterialPageRoute(builder: (context) => HuertoScreen()),
        );
      },
      child: Row(
        children: [
          Icon(
            Icons.add_circle,
            color: kVerde,
          ),
        ],
      ),
    );
  }
}
