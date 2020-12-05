import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Modificar extends StatelessWidget {
  final String imgUrl;
  const Modificar({
    Key key,
    this.imgUrl = 'assets/Grupo 200.svg',
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
          Padding(padding: const EdgeInsets.fromLTRB(6, 0, 6, 4)),
          SvgPicture.asset(
            imgUrl,
          ),
          FlatButton(
            child: new Text(
              'Modificar',
              style: TextStyle(
                color: Color(0xFF291C84),
                fontSize: 18,
              ),
            ),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

/*IconButton(icon: Icon(Icons.edit), onPressed: null),
crossAxisAlignment: CrossAxisAlignment.stretch,

child: IconButton(
  icon: Icon(Icons.edit),
  iconSize: 48,
  color: Color(0xFF291C84),
  onPressed: () {},
),*/
