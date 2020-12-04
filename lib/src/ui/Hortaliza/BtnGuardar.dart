import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/HomeScreen.dart';

class BtnGuardar extends StatelessWidget {
  const BtnGuardar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return RaisedButton(
      color: kVerde,
      onPressed: () {
        Navigator.pop(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
      child: Row(
        children: [
          Text(
            'Guardar',
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.045,
            ),
          )
        ],
      ),
    );
  }
}
