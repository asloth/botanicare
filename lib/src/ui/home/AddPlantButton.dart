import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class AddPlantWidget extends StatelessWidget {
  const AddPlantWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: kPrimaryColor,
      onPressed: () {},
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
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
