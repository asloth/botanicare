import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Constants.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kBackgroundColor2,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding / 2,
        horizontal: kDefaultPadding,
      ),
      child: Row(
        children: [
          Icon(
            Icons.filter_drama,
            color: Colors.blue,
          ),
          Text(
            'Lluvia pesada',
            style: TextStyle(
              fontSize: 17,
              color: Colors.lightBlue,
            ),
          ),
          Spacer(),
          Icon(
            Icons.sim_card_alert,
            color: Colors.black,
          ),
          Text(
            '19° C',
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
