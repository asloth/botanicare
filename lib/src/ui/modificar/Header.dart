import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  final String imgUrl;
  final backcolor;
  const Header({
    Key key,
    this.imgUrl = 'assets/welcome-door.svg',
    this.backcolor = kBackgroundColor2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.45,
      color: backcolor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          kDefaultPadding * 0.8,
          kDefaultPadding * 1.5,
          kDefaultPadding * 0.8,
          0,
        ),
        child: SvgPicture.asset(
          imgUrl,
        ),
      ),
    );
  }
}
