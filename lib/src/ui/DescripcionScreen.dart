import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/comon/BackDescripcion.dart';
import 'package:botanicare/src/ui/DescripcionHortaliza/Header.dart';
import 'package:botanicare/src/ui/DescripcionHortaliza/DetalleCard.dart';

class DescripcionScreen extends StatelessWidget {
  const DescripcionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: BackDescripcion(
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
                  DetalleCard(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
