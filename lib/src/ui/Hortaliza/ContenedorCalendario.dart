import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/Hortaliza/InputLargoNaranja.dart';
import 'package:botanicare/src/ui/HuertoScreen.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Hortaliza/HeaderCalendario.dart';
import 'package:botanicare/src/ui/Hortaliza/FechaSiembra.dart';
import 'package:botanicare/src/ui/Hortaliza/FechaTerreno.dart';
import 'package:botanicare/src/ui/Hortaliza/BtnCalcularNaranja.dart';
import 'package:botanicare/src/ui/Hortaliza/FechaProbable.dart';

class ContenedorCalendario extends StatelessWidget {
  TextEditingController controllernaraja = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        width: 320,
        height: 430,
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
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
            Container(
              width: 100,
              height: 48,
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: kNaranja,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: kNaranja,
                    elevation: 15,
                    onPressed: () {
                      controllernaraja =
                          TextEditingController(text: '10/12/2020');
                    },
                    child: Row(
                      children: [
                        Text(
                          'Calcular',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.04,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: size.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fecha Probable de Cosecha',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kNaranja,
                      fontSize: size.width * 0.04,
                    ),
                  ),
                  InputLargoNaranja(
                    controller: controllernaraja,
                    hintText: '',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
