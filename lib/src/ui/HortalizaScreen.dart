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
import 'package:botanicare/src/ui/Hortaliza/CrearHorta.dart';
import 'package:botanicare/src/ui/Hortaliza/BtnGuardar.dart';
import 'package:botanicare/src/ui/Hortaliza/BtnCancelar.dart';

class HortalizaScreen extends StatelessWidget {
  const HortalizaScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: BackBlanco(
            child: Container(
              height: size.height * 1.2,
              padding: EdgeInsets.fromLTRB(
                kDefaultPadding * 0.9,
                20,
                kDefaultPadding * 0.9,
                kDefaultPadding * 0.9,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  //SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BtnCancelar(),
                      SizedBox(width: size.width * 0.04),
                      BtnGuardar(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
