import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Foto extends StatelessWidget {
  final backcolor;
  const Foto({
    Key key,
    this.backcolor = kBackgroundColor2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: 200.0,
      height: 200.0,
      /*decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backcolor,
      ),*/
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 5,
            left: size.width - 310,
            child: SvgPicture.asset(
              'assets/Botanicare.svg',
            ),
          ),
        ],
      ),
    );
  }
}

/* 
    Container(
      child: SvgPicture.asset(
        'assets/perfil.svg',
      ),
    );


      width: 180.0,
      height: 180.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backcolor,
      ),
      child: IconButton(
        icon: Icon(Icons.panorama),
        onPressed: () {},
      ),


      Positioned(
            top: -78,
            left: size.width - 412,
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.01, horizontal: 0.01)),
          SvgPicture.asset(
            'assets/Icono.svg',
            width: size.width * 0.10,
            height: size.height * 0.15,
          ),

*/
