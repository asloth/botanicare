import 'dart:typed_data';

import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:botanicare/src/ui/HomeScreen.dart';
import 'package:botanicare/src/ui/ModificarHortalizaScreen.dart';

class DetalleCard extends StatelessWidget {
  final String nick;
  final String type;
  final String season;
  final String cant;
  final String name;

  const DetalleCard({
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

    return Container(
      margin: EdgeInsets.fromLTRB(6, 40, 6, 30),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: kBackgroundColor2,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [
          kDefaultShadow,
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 4, 8, 6),
                child: Icon(
                  Icons.circle,
                  size: 8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 4, 8, 6),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hortaliza: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: size.height * 0.02,
                        ),
                      ),
                      TextSpan(
                        text: nick, //nombHortaliza,
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: size.height * 0.02,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 4, 8, 6),
                child: Icon(
                  Icons.circle,
                  size: 8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 4, 8, 6),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Tipo de Hortaliza: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: size.height * 0.02,
                        ),
                      ),
                      TextSpan(
                        text: type, //nombHortaliza,
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: size.height * 0.02,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 4, 8, 6),
                child: Icon(
                  Icons.circle,
                  size: 8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 4, 8, 6),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Época del año: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: size.height * 0.02,
                        ),
                      ),
                      TextSpan(
                        text: season, //nombHortaliza,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.height * 0.02,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 4, 8, 6),
                child: Icon(
                  Icons.circle,
                  size: 8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 4, 8, 6),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Cantidad: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: size.height * 0.02,
                        ),
                      ),
                      TextSpan(
                        text: cant, //nombHortaliza,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.height * 0.02,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

/*
FloatingActionButton(
                child: Icon(Icons.edit),
                elevation: 25.0,
                backgroundColor: kVerde,
                onPressed: () {},
              ),
*/
