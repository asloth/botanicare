import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Hortaliza/HeaderEconomica.dart';
import 'package:botanicare/src/ui/Hortaliza/PrecioVentaUni.dart';
import 'package:botanicare/src/ui/Hortaliza/BtnCalcularAmarillo.dart';
import 'package:botanicare/src/ui/Hortaliza/CostoConsu.dart';
import 'package:botanicare/src/ui/Hortaliza/CostoVent.dart';
import 'package:botanicare/src/ui/Hortaliza/Ahorro.dart';
import 'package:botanicare/src/ui/Hortaliza/Ganancia.dart';

class ContenedorEconomica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        width: 320,
        height: 460,
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
            HeaderEconomica(),
            PrecioVentaUni(),
            BtnCalcularAmarillo(),
            Row(
              children: [
                CostoConsu(),
                CostoVent(),
              ],
            ),
            Row(
              children: [
                Ahorro(),
                Ganancia(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
