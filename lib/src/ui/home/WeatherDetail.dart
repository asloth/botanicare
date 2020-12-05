import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherDetailWidget extends StatelessWidget {
  const WeatherDetailWidget({Key key}) : super(key: key);

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
        vertical: kDefaultPadding / 10,
        horizontal: kDefaultPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            'assets/icons/light.svg',
            height: size.height * 0.045,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Luz\n".toUpperCase(),
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: size.width * 0.032,
                  ),
                ),
                TextSpan(
                  text: "5,8k lux",
                  style: Theme.of(context).textTheme.button.copyWith(
                        fontSize: size.width * 0.03,
                      ),
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            'assets/icons/wind-solid.svg',
            height: size.height * 0.045,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Viento\n".toUpperCase(),
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: size.width * 0.032,
                  ),
                ),
                TextSpan(
                  text: "14km/h",
                  style: Theme.of(context).textTheme.button.copyWith(
                        fontSize: size.width * 0.03,
                      ),
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            'assets/icons/humidity.svg',
            height: size.height * 0.045,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Humedad\n".toUpperCase(),
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: size.width * 0.032,
                  ),
                ),
                TextSpan(
                  text: "86%",
                  style: Theme.of(context).textTheme.button.copyWith(
                        fontSize: size.width * 0.03,
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
