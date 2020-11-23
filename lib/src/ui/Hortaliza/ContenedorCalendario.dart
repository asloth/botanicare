import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Hortaliza/HeaderCalendario.dart';
import 'package:botanicare/src/ui/Hortaliza/FechaSiembra.dart';
import 'package:botanicare/src/ui/Hortaliza/FechaTerreno.dart';
import 'package:botanicare/src/ui/Hortaliza/BtnCalcular.dart';
import 'package:botanicare/src/ui/Hortaliza/FechaProbable.dart';

class ContenedorCalendario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        width: 320,
        height: 435,
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
        decoration: BoxDecoration(
          color: kBackgroundColor2,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            kDefaultShadow,
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeaderCalendario(),
            FechaTerreno(),
            FechaSiembra(),
            BtnCalcular(),
            FechaProbable(),
          ],
        ),
      ),
    );
  }
}
