import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:botanicare/src/ui/bitacora/DetalleHistoria.dart';

class PlantCard extends StatelessWidget {
  final String imgUrl, nombHortaliza, actividad, cantidad, metrica, fecha;
  const PlantCard({
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
      width: size.width * 0.4,
      height: size.height * 0.3,
      padding: EdgeInsets.fromLTRB(25, 0, 25, 10),
      decoration: BoxDecoration(
        color: kGrey,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: SvgPicture.asset(
              'assets/Planta.svg',
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
            height: 8,
          ),
          Text(
            'Sumantri De Alburqueque',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kTextColor,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
