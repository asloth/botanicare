import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class HeaderArea extends StatelessWidget {
  const HeaderArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: 320,
      height: 60,
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: kVerde,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Área',
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.05,
            ),
          )
        ],
      ),
    );
  }
}
