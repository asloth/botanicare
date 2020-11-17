import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetalleHistoria extends StatelessWidget {
  final String nombHortaliza, actividad, cantidad, metrica;
  const DetalleHistoria({
    Key key,
    this.nombHortaliza,
    this.actividad,
    this.cantidad,
    this.metrica,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      height: 90,
      padding: const EdgeInsets.fromLTRB(15, 8, 5, 10),
      decoration: BoxDecoration(
        color: kBackgroundColor2,
        border: Border.all(color: Colors.grey),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 4, 5, 2),
                  /*symmetric(
                  horizontal: 5,
                  vertical: 10.0,
                ),*/
                  child: Icon(
                    Icons.circle,
                    size: 8,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hortaliza: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: size.height * 0.024,
                        ),
                      ),
                      TextSpan(
                        text: nombHortaliza,
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: size.height * 0.024,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 4, 5, 0),
                  child: Icon(
                    Icons.circle,
                    size: 8,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Actividad: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: size.height * 0.024,
                        ),
                      ),
                      TextSpan(
                        text: actividad,
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: size.height * 0.024,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 4, 5, 0),
                  child: Icon(
                    Icons.circle,
                    size: 8,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Cantidad: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: size.height * 0.024,
                        ),
                      ),
                      TextSpan(
                        text: actividad,
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: size.height * 0.024,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
