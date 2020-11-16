import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/comon/Background.dart';
import 'package:botanicare/src/ui/garden/PlantCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HuertoScreen extends StatelessWidget {
  const HuertoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Container(
        height: size.height,
        padding: EdgeInsets.fromLTRB(
          kDefaultPadding * 0.5,
          kDefaultPadding * 1.2,
          kDefaultPadding * 0.5,
          kDefaultPadding * 0.9,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Text(
                  'Mi huerto',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: size.height * 0.05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              PlantCard(
                plantNickname: 'Sophie',
                plantName: 'Bonsai',
                seedtime: '18/12/2020',
                station: 'Primavera-Verano',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
