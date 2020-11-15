import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/perfil/Btn_Modificar.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/perfil/header.dart';
import 'package:botanicare/src/ui/perfil/Foto.dart';
import 'package:botanicare/src/ui/perfil/Nombre.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      padding: EdgeInsets.fromLTRB(
          kDefaultPadding, kDefaultPadding * 0.5, kDefaultPadding, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Header(
            imgUrl: 'assets/Grupo 378.svg',
            backcolor: kBackgroundColor,
          ),
          Foto(),
          Nombre()
        ],
      ),
    );
  }
}
