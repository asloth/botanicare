import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  final String herotext;
  const WelcomeText({
    Key key,
    this.herotext = 'Hola! Bienvenido a Botanicare',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        bottom: kDefaultPadding / 2,
      ),
      child: Text(
        herotext,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: size.height * 0.035,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
