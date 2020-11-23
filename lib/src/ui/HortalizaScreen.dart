import 'dart:ui';
import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/comon/BackBlanco.dart';
import 'package:botanicare/src/ui/Hortaliza/Header.dart';
import 'package:botanicare/src/ui/Hortaliza/ContenedorArea.dart';
import 'package:botanicare/src/ui/Hortaliza/Nombre.dart';
import 'package:botanicare/src/ui/Hortaliza/TipoHortaliza.dart';
import 'package:botanicare/src/ui/Hortaliza/Apodo.dart';
import 'package:botanicare/src/ui/Hortaliza/Epoca.dart';

class HortalizaScreen extends StatelessWidget {
  const HortalizaScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: BackBlanco(
          child: Container(
            height: size.height * 1.2,
            padding: EdgeInsets.fromLTRB(
              kDefaultPadding * 0.9,
              10,
              kDefaultPadding * 0.9,
              kDefaultPadding * 0.9,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                SizedBox(height: size.height * 0.03),
                Nombre(),
                SizedBox(height: size.height * 0.02),
                TipoHortaliza(),
                SizedBox(height: size.height * 0.02),
                Apodo(),
                SizedBox(height: size.height * 0.02),
                Epoca(),
                SizedBox(height: size.height * 0.03),
                ContenedorArea(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
