import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherDetailWidget extends StatelessWidget {
  const WeatherDetailWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: kBackgroundColor2,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding / 10,
        horizontal: kDefaultPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
            size: 25,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Luz\n".toUpperCase(),
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 11,
                  ),
                ),
                TextSpan(
                  text: "5,8k lux",
                  style: Theme.of(context).textTheme.button.copyWith(
                        fontSize: 16,
                      ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/wind-solid.svg",
              height: 25,
              width: 25,
            ),
            onPressed: () {},
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Viento\n".toUpperCase(),
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 11,
                  ),
                ),
                TextSpan(
                  text: "10m/h",
                  style: Theme.of(context).textTheme.button.copyWith(
                        fontSize: 16,
                      ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.opacity,
            color: Colors.lightBlue,
            size: 25,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Humedad\n".toUpperCase(),
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 11,
                  ),
                ),
                TextSpan(
                  text: "76%",
                  style: Theme.of(context).textTheme.button.copyWith(
                        fontSize: 16,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
