import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Hortaliza/InputFieldNume.dart';

class ProdConsumo extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const ProdConsumo({
    Key key,
    this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.fromLTRB(20, 5, 15, 20),
      width: size.width * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pro.Consumo',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kNegro,
              fontSize: size.width * 0.04,
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
