import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  final backcolor;
  const Titulo({
    Key key,
    this.backcolor = kBackgroundColor2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 200.0,
      //height: 200.0,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Text(
            'Botanicare',
            style: TextStyle(
              fontFamily: 'RobotoMono',
              fontSize: 50,
            ),
          ),
        ],
      ),
    );
  }
}
