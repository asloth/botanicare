import 'dart:ui';
import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/Hortaliza/ContenedorEconomica.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/comon/BackBlanco.dart';
import 'package:botanicare/src/ui/Hortaliza/Header.dart';
import 'package:botanicare/src/ui/Hortaliza/ContenedorArea.dart';
import 'package:botanicare/src/ui/Hortaliza/Nombre.dart';
import 'package:botanicare/src/ui/Hortaliza/TipoHortaliza.dart';
import 'package:botanicare/src/ui/Hortaliza/Apodo.dart';
import 'package:botanicare/src/ui/Hortaliza/Epoca.dart';
import 'package:botanicare/src/ui/Hortaliza/ContenedorCalendario.dart';
import 'package:botanicare/src/ui/Hortaliza/ContenedorProduccion.dart';
import 'package:botanicare/src/ui/Hortaliza/BtnCancelar.dart';
import 'package:botanicare/src/ui/Hortaliza/BtnGuardar.dart';

class ModificarHortalizaScreen extends StatelessWidget {
  const ModificarHortalizaScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: BackBlanco(
          child: Container(
            height: size.height * 3.5,
            padding: EdgeInsets.fromLTRB(
              kDefaultPadding * 0.9,
              10,
              kDefaultPadding * 0.9,
              kDefaultPadding * 0.9,
            ),
            child: Column(
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
                SizedBox(height: size.height * 0.03),
                ContenedorCalendario(),
                SizedBox(height: size.height * 0.03),
                ContenedorProduccion(),
                SizedBox(height: size.height * 0.03),
                ContenedorEconomica(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
