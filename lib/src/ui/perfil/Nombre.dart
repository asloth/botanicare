import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class Nombre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          kDefaultPadding, kDefaultPadding * 0.5, kDefaultPadding, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Sumantri De Alburqueque',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kTextColor,
              fontSize: 29,
            ),
          ),
        ],
      ),
    );
  }
}
