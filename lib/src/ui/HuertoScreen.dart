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
        padding: EdgeInsets.fromLTRB(kDefaultPadding, kDefaultPadding * 1.2,
            kDefaultPadding, kDefaultPadding * 0.9),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Mi huerto',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: size.height * 0.05,
                  fontWeight: FontWeight.w600,
                ),
              ),
              PlantCard(),
            ],
          ),
        ),
      ),
    );
  }
}
