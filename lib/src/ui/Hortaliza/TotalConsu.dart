import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Hortaliza/InputLargoCeleste.dart';

class TotalConsu extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const TotalConsu({
    Key key,
    this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1),
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total de Compost Utilizada',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kCeleste,
              fontSize: size.width * 0.045,
            ),
          ),
          InputLargoCeleste(
            hintText: '',
          ),
        ],
      ),
    );
  }
}
