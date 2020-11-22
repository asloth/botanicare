import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/Hortaliza/Header.dart';
import 'package:botanicare/src/ui/comon/BackBlanco.dart';
import 'package:flutter/material.dart';

class HortalizaScreen extends StatelessWidget {
  const HortalizaScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: BackBlanco(
          child: Container(
            height: size.height,
            padding: EdgeInsets.fromLTRB(
              kDefaultPadding,
              10,
              kDefaultPadding,
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
