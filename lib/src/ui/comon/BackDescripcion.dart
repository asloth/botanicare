import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackDescripcion extends StatelessWidget {
  final Widget child;
  const BackDescripcion({
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
            top: 2,
            left: size.width - 410,
            child: SvgPicture.asset(
              'assets/DescripciónHortaliza.svg',
              width: size.width + 20,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
