import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/comon/Background.dart';
import 'package:botanicare/src/ui/garden/PlantCard.dart';
import 'package:flutter/material.dart';

class HuertoScreen extends StatelessWidget {
  const HuertoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        child: Container(
          height: size.height,
          padding: EdgeInsets.fromLTRB(
            kDefaultPadding,
            25,
            kDefaultPadding,
            kDefaultPadding * 0.9,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Mi huerto',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: size.height * 0.042,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
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
      ),
    );
  }
}
