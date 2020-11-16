import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class Foto extends StatelessWidget {
  final String imgUrl;
  final backcolor;
  const Foto({
    Key key,
    this.imgUrl = 'assets/Icono.svg',
    this.backcolor = kBackgroundColor2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backcolor,
      ),
      child: IconButton(
        icon: Icon(Icons.panorama),
        onPressed: () {},
      ),
    );
  }
}