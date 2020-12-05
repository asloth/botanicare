import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/HomeScreen.dart';

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
        vertical: 8,
      ),
      height: 85,
      padding: const EdgeInsets.fromLTRB(15, 2, 0, 10),
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
                  padding: const EdgeInsets.fromLTRB(2, 0, 8, 2),
                  child: Icon(
                    Icons.circle,
                    size: 8,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 0, 15, 0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Actividad: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: size.height * 0.02,
                          ),
                        ),
                        TextSpan(
                          text: 'Compost', //nombHortaliza,
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: size.height * 0.02,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.remove_circle_outline,
                    color: kPrimaryColor,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 0, 8, 2),
                  child: Icon(
                    Icons.circle,
                    size: 8,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 0, 15, 0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Cantidad: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: size.height * 0.02,
                          ),
                        ),
                        TextSpan(
                          text: '3 kg', //nombHortaliza,
                          style: TextStyle(
                            color: kVerde,
                            fontWeight: FontWeight.w500,
                            fontSize: size.height * 0.02,
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
