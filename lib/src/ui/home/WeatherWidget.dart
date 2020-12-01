import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Constants.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.085,
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
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
            child: Text(
              'Mayormente soleado',
              style: TextStyle(
                fontSize: size.height * 0.02,
                color: Colors.lightBlue,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: Icon(Icons.ac_unit),
          ),
          Text(
            '25°C',
            style: TextStyle(
              fontSize: size.height * 0.02,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
