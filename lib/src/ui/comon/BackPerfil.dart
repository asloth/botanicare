import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackPerfil extends StatelessWidget {
  final Widget child;
  const BackPerfil({
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
            top: -130,
            left: size.width - 400,
            child: SvgPicture.asset(
              'assets/Header_Perfil.svg',
            ),
          ),
          child,
        ],
      ),
    );
  }
}
