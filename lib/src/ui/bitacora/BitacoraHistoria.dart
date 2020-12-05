import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/bitacora/DetalleHistoria.dart';

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
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      height: size.height - 330,
      padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
      decoration: BoxDecoration(
        color: kBackgroundColor2,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [
          kDefaultShadow,
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 20, 8, 5),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Viernes - 04/12/2020',
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
                )
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
              height: 8,
            ),
            DetalleHistoria(),
            DetalleHistoria(),
            DetalleHistoria(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 20, 8, 5),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Martes - 01/12/2020',
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
                )
              ],
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
