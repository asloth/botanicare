import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackAnimation extends StatelessWidget {
  final Widget child;
  const BackAnimation({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: kBackgroundColor,
      width: double.infinity,
      height: size.height,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: size.width - 395,
            child: SvgPicture.asset(
              'assets/Superior.svg',
              width: size.width + 5,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
