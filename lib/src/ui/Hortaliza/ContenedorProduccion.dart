import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/Hortaliza/ProdConsumo.dart';
import 'package:botanicare/src/ui/Hortaliza/ProdVenta.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Hortaliza/HeaderProduccion.dart';
import 'package:botanicare/src/ui/Hortaliza/FechaCosecha.dart';
import 'package:botanicare/src/ui/Hortaliza/MetricaProd.dart';
import 'package:botanicare/src/ui/Hortaliza/BtnCalcularCeleste.dart';
import 'package:botanicare/src/ui/Hortaliza/TotalProd.dart';
import 'package:botanicare/src/ui/Hortaliza/TotalConsu.dart';
import 'package:botanicare/src/ui/Hortaliza/ListaActivi.dart';

class ContenedorProduccion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        width: 320,
        height: 846,
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
            HeaderProduccion(),
            FechaCosecha(),
            Row(
              children: [
                ProdConsumo(),
                ProdVenta(),
              ],
            ),
            MetricaProd(),
            BtnCalcularCeleste(),
            TotalProd(),
            TotalConsu(),
            ListaActivi(),
          ],
        ),
      ),
    );
  }
}
