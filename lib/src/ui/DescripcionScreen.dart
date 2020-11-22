import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/comon/Background.dart';
import 'package:botanicare/src/ui/DescripcionHortaliza/Header.dart';
import 'package:flutter/material.dart';

class HuertoScreen extends StatelessWidget {
  const HuertoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Background(
          child: Container(
            height: size.height,
            padding: EdgeInsets.fromLTRB(
              kDefaultPadding * 0.9,
              10,
              kDefaultPadding * 0.9,
              kDefaultPadding * 0.9,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Header(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
