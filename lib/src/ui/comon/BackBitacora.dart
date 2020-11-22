import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackBitacora extends StatelessWidget {
  final Widget child;
  const BackBitacora({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: kBackgroundColor,
      width: double.infinity,
      height: size.height,
      child: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 1,
              left: size.width - 100,
              child: SvgPicture.asset(
                'assets/Arbol_Izq.svg',
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
