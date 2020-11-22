import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PFoto extends StatelessWidget {
  final String imgUrl;
  const PFoto({
    Key key,
    this.imgUrl = 'assets/Elipse 74.svg',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(imgUrl);
  }
}
