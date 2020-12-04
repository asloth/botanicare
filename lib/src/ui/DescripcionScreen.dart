import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/comon/BackDescripcion.dart';
import 'package:botanicare/src/ui/DescripcionHortaliza/Header.dart';
import 'package:botanicare/src/ui/DescripcionHortaliza/DetalleCard.dart';
import 'package:botanicare/src/ui/HortalizaScreen.dart';
import 'package:botanicare/src/ui/DescripcionHortaliza/BitácoraScreen.dart';

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
                kDefaultPadding * 1.48,
                10,
                kDefaultPadding * 1.43,
                kDefaultPadding * 0.9,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Header(),
                  DetalleCard(),
                  BitacoraScreen(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/* 
Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 4, 150, 3),
                        child: Text(
                          'Bitácora',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: size.height * 0.04,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        child: Icon(Icons.add),
                        elevation: 20.0,
                        backgroundColor: kVerde,
                        onPressed: () {},
                      ),
                    ],
                  ),
*/
