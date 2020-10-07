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
    return Container(
      color: kBackgroundColor,
      padding: EdgeInsets.fromLTRB(kDefaultPadding, kDefaultPadding * 2,
          kDefaultPadding, kDefaultPadding * 1.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Clima',
            style: TextStyle(
              color: kTextColor,
              fontSize: 29,
            ),
          ),
          WeatherWidget(),
          WeatherDetailWidget(),
          Row(
            children: [
              Text(
                'Hoy',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 29,
                ),
              ),
              Spacer(),
              AddPlantWidget(),
            ],
          ),
          EmptyGardenWidget(),
        ],
      ),
    );
  }
}
