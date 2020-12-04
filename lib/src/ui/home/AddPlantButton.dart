import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/HortalizaScreen.dart';

class AddPlantWidget extends StatelessWidget {
  const AddPlantWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return RaisedButton(
      color: kPrimaryColor,
      elevation: 15,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HortalizaScreen()),
        );
      },
      child: Row(
        children: [
          Icon(
            Icons.add,
            color: Colors.white,
          ),
          Text(
            'Añadir',
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
