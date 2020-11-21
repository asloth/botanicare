import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/bitacora/DetalleHistoria.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BitacoraHistoria extends StatelessWidget {
  final String imgUrl, nombHortaliza, actividad, cantidad, metrica, fecha;
  const BitacoraHistoria({
    Key key,
    this.imgUrl,
    @required this.nombHortaliza,
    @required this.actividad,
    @required this.cantidad,
    @required this.metrica,
    @required this.fecha,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      height: size.height - 330,
      padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
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
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '$fecha\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: size.height * 0.033,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
              height: 8,
            ),
            SizedBox(height: size.height * 0.02),
            DetalleHistoria()
          ],
        ),
      ),
    );
  }
}