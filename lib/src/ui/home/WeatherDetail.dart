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
            height: size.height * 0.055,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Luz\n".toUpperCase(),
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: size.width * 0.035,
                  ),
                ),
                TextSpan(
                  text: "5,8k lux",
                  style: Theme.of(context).textTheme.button.copyWith(
                        fontSize: size.width * 0.05,
                      ),
                ),
              ],
            ),
          ),
          Container(
            height: size.height * 0.055,
            width: size.width * 0.1,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.all(5),
            child: SvgPicture.asset(
              "assets/icons/wind-solid.svg",
              color: Colors.white,
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Viento\n".toUpperCase(),
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: size.width * 0.035,
                  ),
                ),
                TextSpan(
                  text: "10m/h",
                  style: Theme.of(context).textTheme.button.copyWith(
                        fontSize: size.width * 0.05,
                      ),
                ),
              ],
            ),
          ),
          Container(
            height: size.height * 0.055,
            width: size.width * 0.1,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.opacity,
              color: Colors.white,
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Humedad\n".toUpperCase(),
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: size.width * 0.035,
                  ),
                ),
                TextSpan(
                  text: "76%",
                  style: Theme.of(context).textTheme.button.copyWith(
                        fontSize: size.width * 0.05,
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
