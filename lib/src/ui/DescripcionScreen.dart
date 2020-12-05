import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/comon/BackDescripcion.dart';
import 'package:botanicare/src/ui/DescripcionHortaliza/Header.dart';
import 'package:botanicare/src/ui/DescripcionHortaliza/DetalleCard.dart';
import 'package:botanicare/src/ui/DescripcionHortaliza/BitácoraScreen.dart';
import 'package:botanicare/src/ui/ModificarHortalizaScreen.dart';

class DescripcionScreen extends StatelessWidget {
  final String nick;
  final String type;
  final String season;
  final String cant;
  final String name;

  const DescripcionScreen({
    Key key,
    this.nick,
    this.name,
    this.season,
    this.type,
    this.cant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        //body: SingleChildScrollView(
        body: BackDescripcion(
          child: Container(
            height: size.height,
            padding: EdgeInsets.fromLTRB(
              kDefaultPadding * 0.9,
              10,
              kDefaultPadding * 0.9,
              kDefaultPadding * 0.9,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Header(),
                DetalleCard(
                  cant: cant,
                  name: name,
                  nick: nick,
                  season: season,
                  type: type,
                ),
                BitacoraScreen(),
              ],
            ),
          ),
        ),
        //),
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
