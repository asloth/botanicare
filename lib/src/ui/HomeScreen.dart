import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/home/AddPlantButton.dart';
import 'package:botanicare/src/ui/home/EmptyGarden.dart';
import 'package:botanicare/src/ui/home/WeatherDetail.dart';
import 'package:botanicare/src/ui/home/WeatherWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        color: kBackgroundColor,
        padding: EdgeInsets.fromLTRB(kDefaultPadding, kDefaultPadding * 1.2,
            kDefaultPadding, kDefaultPadding * 0.9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, //Esta linea aun se quitar[a en el futuro pero por el momento se ha dejado
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Clima',
              style: TextStyle(
                color: kTextColor,
                fontSize: size.height * 0.05,
                fontWeight: FontWeight.w600,
              ),
            ),
            WeatherWidget(),
            WeatherDetailWidget(),
            Row(
              children: [
                Text(
                  'Mi Jardín',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: size.height * 0.045,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                AddPlantWidget(),
              ],
            ),
            EmptyGardenWidget(),
          ],
        ),
      ),
    );
  }
}
