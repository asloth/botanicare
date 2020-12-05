import 'dart:ui';
import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/Hortaliza/HortalizaForm.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/comon/BackBlanco.dart';

class HortalizaScreen extends StatelessWidget {
  const HortalizaScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: BackBlanco(
            child: Container(
              height: size.height * 1.2,
              padding: EdgeInsets.fromLTRB(
                kDefaultPadding * 0.9,
                10,
                kDefaultPadding * 0.9,
                kDefaultPadding * 0.9,
              ),
              child: HortalizaForm(),
            ),
          ),
        ),
      ),
    );
  }
}
