import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  final String imgUrl;
  final backcolor;
  const Header({
    Key key,
    this.imgUrl = 'assets/Grupo 378.svg',
    this.backcolor = kBackgroundColor2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.21,
      color: backcolor,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: SvgPicture.asset(
          imgUrl,
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
