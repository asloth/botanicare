import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/comon/BackAnimation.dart';
import 'package:botanicare/src/ui/Ani/Icono.dart';
import 'package:botanicare/src/ui/Ani/Titulo.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: BackAnimation(
        child: Container(
          height: size.height,
          padding: EdgeInsets.fromLTRB(
            kDefaultPadding * 3.5,
            125,
            kDefaultPadding * 0.9,
            kDefaultPadding * 0.9,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icono(),
              Titulo(),
            ],
          ),
        ),
      ),
    );
  }
}
