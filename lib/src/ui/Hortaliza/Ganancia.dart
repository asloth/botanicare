import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Hortaliza/InputFieldNumeAmarillo.dart';

class Ganancia extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const Ganancia({
    Key key,
    this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      width: size.width * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ganancia',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kNegro,
              fontSize: size.width * 0.042,
            ),
          ),
          InputFieldNumeAmarillo(
            hintText: 's/.0.00',
          ),
        ],
      ),
    );
  }
}

/*
*/
