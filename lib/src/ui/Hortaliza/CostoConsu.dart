import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Hortaliza/InputFieldNumeAmarillo.dart';

class CostoConsu extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const CostoConsu({
    Key key,
    this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      width: size.width * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Costo Consumo',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kNegro,
              fontSize: size.width * 0.04,
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
