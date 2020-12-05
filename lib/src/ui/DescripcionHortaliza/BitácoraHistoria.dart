import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/DescripcionHortaliza/DetalleHistoria.dart';

class BitacoraHistoria extends StatelessWidget {
  final String imgUrl, nombHortaliza, actividad, cantidad, metrica, fecha;
  const BitacoraHistoria({
    Key key,
    this.imgUrl,
    this.nombHortaliza,
    this.actividad,
    this.cantidad,
    this.metrica,
    this.fecha,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.4,
      padding: EdgeInsets.fromLTRB(25, 20, 20, 10),
      decoration: BoxDecoration(
        color: kBackgroundColor2,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [kDefaultShadow],
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 0, 8, 10),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Martes - 01/11/2020',
                      //text: '$fecha\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: size.height * 0.028,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
              height: 8,
            ),
            DetalleHistoria(),
            DetalleHistoria(),
            DetalleHistoria(),
          ],
        ),
      ),
    );
  }
}
