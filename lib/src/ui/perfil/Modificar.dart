import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class Modificar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        color: Colors.white,
      ),
      child: IconButton(
        icon: Icon(Icons.edit),
        alignment: Alignment.centerLeft,
        //color: Color(0x291C84),
        onPressed: () {},
      ),
    );
  }
}

/*IconButton(icon: Icon(Icons.edit), onPressed: null),
crossAxisAlignment: CrossAxisAlignment.stretch,*/
