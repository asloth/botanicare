import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        bottom: kDefaultPadding / 2,
      ),
      child: Text(
        'Hola! Bienvenido a Botanicare',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: size.height * 0.035,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
