import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyGardenWidget extends StatelessWidget {
  const EmptyGardenWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding * 2,
      ),
      color: kBackgroundColor2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/flower-pot.svg',
            height: size.height * 0.2,
          ),
          Text(
            'Todavía no tienes plantas',
            style: TextStyle(
              fontSize: size.height * 0.03,
            ),
          ),
          Text(
            'Agrega tu planta ahora',
            style: TextStyle(
              fontSize: size.height * 0.034,
            ),
          ),
        ],
      ),
    );
  }
}
