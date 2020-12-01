import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/HortalizaScreen.dart';
import 'package:flutter/material.dart';

class CrearHorta extends StatelessWidget {
  const CrearHorta({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return RaisedButton(
      color: kPrimaryColor,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HortalizaScreen()),
        );
      },
      child: Row(
        children: [
          Icon(
            Icons.save,
            color: Colors.white,
          ),
          Text(
            'Crear',
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.05,
            ),
          )
        ],
      ),
    );
  }
}
