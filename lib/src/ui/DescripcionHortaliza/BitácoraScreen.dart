import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/DescripcionHortaliza/BitácoraHistoria.dart';

class BitacoraScreen extends StatelessWidget {
  const BitacoraScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      height: size.height / 1.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Bitácora',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: size.height * 0.04,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: size.width * 0.35),
            ],
          ),
          SizedBox(height: size.height * 0.035),
          BitacoraHistoria(),
        ],
      ),
    );
    /*return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text(
                'Bitácora',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: size.height * 0.04,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: size.width * 0.35),
            ],
          ),
          SizedBox(height: size.height * 0.035),
          BitacoraHistoria(),
        ],
      ),
    );*/
  }
}
