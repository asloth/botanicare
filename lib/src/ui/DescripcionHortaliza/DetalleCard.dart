import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetalleCard extends StatelessWidget {
  const DetalleCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 40.0,
        horizontal: 6,
      ),
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
                padding: const EdgeInsets.fromLTRB(2, 4, 8, 2),
                child: Icon(
                  Icons.circle,
                  size: 8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(2, 4, 80, 3),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hortaliza: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: size.height * 0.024,
                        ),
                      ),
                      TextSpan(
                        text: 'Sophia', //nombHortaliza,
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: size.height * 0.021,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FloatingActionButton(
                child: Icon(Icons.edit),
                elevation: 15.0,
                backgroundColor: kVerde,
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(2, 4, 8, 2),
                child: Icon(
                  Icons.circle,
                  size: 8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(2, 4, 8, 3),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Tipo de Hortaliza: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: size.height * 0.024,
                        ),
                      ),
                      TextSpan(
                        text: 'Frutos', //nombHortaliza,
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: size.height * 0.021,
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
                padding: const EdgeInsets.fromLTRB(2, 4, 8, 2),
                child: Icon(
                  Icons.circle,
                  size: 8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(2, 4, 8, 3),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Época del año: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: size.height * 0.024,
                        ),
                      ),
                      TextSpan(
                        text: 'Primavera - Verano', //nombHortaliza,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.height * 0.021,
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
                padding: const EdgeInsets.fromLTRB(2, 4, 8, 2),
                child: Icon(
                  Icons.circle,
                  size: 8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(2, 4, 8, 3),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Área de siembra: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: size.height * 0.024,
                        ),
                      ),
                      TextSpan(
                        text: '2m', //nombHortaliza,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.height * 0.021,
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
