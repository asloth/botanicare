import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class AddPlantWidget extends StatelessWidget {
  const AddPlantWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: kBackgroundColor2,
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            Icons.add,
            color: kPrimaryColor,
          ),
          Text(
            'Añadir planta',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
