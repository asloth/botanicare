import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Icono extends StatelessWidget {
  final backcolor;
  const Icono({
    Key key,
    this.backcolor = kBackgroundColor2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/Botanicare.svg',
          ),
        ],
      ),
    );
  }
}
