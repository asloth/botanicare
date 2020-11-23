import 'dart:ui';
import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/comon/BackBlanco.dart';
import 'package:botanicare/src/ui/Hortaliza/Header.dart';
import 'package:botanicare/src/ui/Hortaliza/ContenedorArea.dart';
import 'package:botanicare/src/ui/Hortaliza/Nombre.dart';
import 'package:botanicare/src/ui/Hortaliza/TipoHortaliza.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: BackBlanco(
          child: Container(
            height: size.height,
            padding: EdgeInsets.fromLTRB(
              kDefaultPadding * 0.9,
              10,
              kDefaultPadding * 0.9,
              kDefaultPadding * 0.9,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Header(),
                  SizedBox(height: size.height * 0.03),
                  Nombre(),
                  SizedBox(height: size.height * 0.02),
                  TipoHortaliza(),
                  SizedBox(height: size.height * 0.03),
                  ContenedorArea(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/*
import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/comon/BackPerfil.dart';
import 'package:botanicare/src/ui/perfil/Foto.dart';
import 'package:botanicare/src/ui/perfil/Nombre.dart';
import 'package:botanicare/src/ui/perfil/Modificar.dart';
import 'package:botanicare/src/ui/perfil/Ayuda.dart';
import 'package:botanicare/src/ui/perfil/Cerrar.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: BackPerfil(
        child: Container(
          height: size.height,
          padding: EdgeInsets.fromLTRB(
            kDefaultPadding * 0.9,
            0,
            kDefaultPadding * 0.9,
            kDefaultPadding * 0.9,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: size.height * 0.15),
                Foto(),
                SizedBox(height: size.height * 0.01),
                Nombre(),
                SizedBox(height: size.height * 0.03),
                Modificar(),
                SizedBox(height: size.height * 0.02),
                Ayuda(),
                SizedBox(height: size.height * 0.02),
                Cerrar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/
