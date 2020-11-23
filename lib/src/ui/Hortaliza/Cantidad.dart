import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Hortaliza/InputFieldNume.dart';

class Cantidad extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const Cantidad({
    Key key,
    this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 1),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cantidad',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kNegro,
              fontSize: size.width * 0.045,
            ),
          ),
          InputFieldNume(
            hintText: '0',
          ),
        ],
      ),
    );
  }
}

/*
*/
