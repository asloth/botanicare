import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/DescripcionHortaliza/BitácoraHistoria.dart';
import 'package:botanicare/src/ui/HuertoScreen.dart';

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
              SizedBox(width: size.width * 0.4),
              IconButton(
                icon: Icon(
                  Icons.add_circle,
                  color: kVerde,
                  size: 50,
                ),
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => HuertoScreen()),
                  );
                },
              ),
            ],
          ),
          SizedBox(height: size.height * 0.03),
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
