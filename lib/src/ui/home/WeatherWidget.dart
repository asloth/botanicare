import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
            child: Text(
              'Lluvia pesada',
              style: TextStyle(
                fontSize: 17,
                color: Colors.lightBlue,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
            child: SvgPicture.asset(
              'assets/icons/temperature.svg',
            ),
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
