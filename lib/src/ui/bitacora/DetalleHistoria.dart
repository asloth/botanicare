import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

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
      height: 110,
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
                  padding: const EdgeInsets.fromLTRB(2, 4, 8, 2),
                  child: Icon(
                    Icons.circle,
                    size: 8,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 4, 8, 3),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hortaliza: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: size.height * 0.024,
                          ),
                        ),
                        TextSpan(
                          text: 'Sophia', //nombHortaliza,
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: size.height * 0.021,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 4, 8, 2),
                  child: Icon(
                    Icons.circle,
                    size: 8,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 4, 8, 3),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Actividad: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: size.height * 0.024,
                          ),
                        ),
                        TextSpan(
                          text: 'Compost', //nombHortaliza,
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: size.height * 0.021,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 4, 8, 2),
                  child: Icon(
                    Icons.circle,
                    size: 8,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 4, 8, 3),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Cantidad: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: size.height * 0.024,
                          ),
                        ),
                        TextSpan(
                          text: '3 kg', //nombHortaliza,
                          style: TextStyle(
                            color: kVerde,
                            fontWeight: FontWeight.w500,
                            fontSize: size.height * 0.021,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
