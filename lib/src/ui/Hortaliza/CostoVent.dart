import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Hortaliza/InputFieldNumeAmarillo.dart';

class CostoVent extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const CostoVent({
    Key key,
    this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: size.width * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Costo Venta',
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
