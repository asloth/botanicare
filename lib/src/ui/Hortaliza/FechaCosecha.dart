import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Hortaliza/InputLargo.dart';

class FechaCosecha extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const FechaCosecha({
    Key key,
    this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fecha de Cosecha',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kNegro,
              fontSize: size.width * 0.045,
            ),
          ),
          InputLargo(
            hintText: 'Ingresa la fecha',
          ),
        ],
      ),
    );
  }
}
