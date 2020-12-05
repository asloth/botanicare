import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/Weather/DetailCity.dart';
import 'package:botanicare/src/ui/home/AddPlantButton.dart';
import 'package:botanicare/src/ui/home/EmptyGarden.dart';
import 'package:botanicare/src/ui/home/WeatherDetail.dart';
import 'package:botanicare/src/ui/home/WeatherWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key, this.city}) : super(key: key);
  final DetailCity city;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        color: kBackgroundColor,
        padding: EdgeInsets.fromLTRB(
          kDefaultPadding,
          0,
          kDefaultPadding,
          kDefaultPadding * 0.9,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, //Esta linea aun se quitara en el futuro pero por el momento se ha dejado
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Clima',
              style: TextStyle(
                color: kTextColor,
                fontSize: size.height * 0.042,
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
                    fontSize: size.height * 0.042,
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
