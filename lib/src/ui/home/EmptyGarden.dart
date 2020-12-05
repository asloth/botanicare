import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:botanicare/src/ui/home/PlantCard.dart';

class EmptyGardenWidget extends StatelessWidget {
  const EmptyGardenWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.fromLTRB(15, 25, 20, 20),
      decoration: BoxDecoration(
        color: kBackgroundColor2,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 05.0,
              ),
              width: size.width * 0.42,
              height: size.height * 0.31,
              padding: EdgeInsets.fromLTRB(25, 0, 25, 5),
              decoration: BoxDecoration(
                color: kGrey,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: SvgPicture.asset(
                      'assets/Planta.svg',
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                    height: 8,
                  ),
                  SizedBox(height: size.height * 0.01),
                  Text(
                    'Sophia',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Primavera - Verano',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              width: size.width * 0.42,
              height: size.height * 0.31,
              padding: EdgeInsets.fromLTRB(25, 0, 25, 5),
              decoration: BoxDecoration(
                color: kGrey,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: SvgPicture.asset(
                      'assets/Planta.svg',
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                    height: 8,
                  ),
                  SizedBox(height: size.height * 0.01),
                  Text(
                    'Sra.Limón',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Todo el año',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              width: size.width * 0.42,
              height: size.height * 0.31,
              padding: EdgeInsets.fromLTRB(25, 0, 25, 5),
              decoration: BoxDecoration(
                color: kGrey,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: SvgPicture.asset(
                      'assets/Planta.svg',
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                    height: 8,
                  ),
                  SizedBox(height: size.height * 0.01),
                  Text(
                    'Mi Violet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Otoño - Invierno',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PlantCard(),
          /*SvgPicture.asset(
            'assets/flower-pot.svg',
            height: size.height * 0.2,
          ),
          SizedBox(height: size.height * 0.03),
          Text(
            'Todavía no tienes plantas',
            style: TextStyle(
              fontSize: size.height * 0.025,
            ),
          ),
          Text(
            'Agrega tu planta ahora',
            style: TextStyle(
              fontSize: size.height * 0.025,
            ),
          ),*/
        ],
      ),
*/
