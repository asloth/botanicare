import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:botanicare/src/service/AuthService.dart';

class Cerrar extends StatelessWidget {
  final String imgUrl;
  const Cerrar({
    Key key,
    this.imgUrl = 'assets/Cerrar.svg',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: const EdgeInsets.all(6)),
          SvgPicture.asset(
            imgUrl,
          ),
          FlatButton(
            child: new Text(
              'Cerrar Sesión',
              style: TextStyle(
                color: Color(0xFFFF6724),
                fontSize: 20,
              ),
            ),
            onPressed: () {
              context.read<AuthService>().signOut();
            },
          ),
        ],
      ),
    );
  }
}
