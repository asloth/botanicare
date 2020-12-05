import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Hortaliza/InputMetrica.dart';

class MetricaProd extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const MetricaProd({
    Key key,
    this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Métrica',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kNegro,
              fontSize: size.width * 0.04,
            ),
          ),
          InputMetrica(),
        ],
      ),
    );
  }
}
