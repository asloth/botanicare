import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Ayuda extends StatelessWidget {
  final String imgUrl;
  const Ayuda({
    Key key,
    this.imgUrl = 'assets/Ayuda.svg',
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
              'Ayuda',
              style: TextStyle(
                color: Color(0xFF66B821),
                fontSize: 20,
              ),
            ),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
