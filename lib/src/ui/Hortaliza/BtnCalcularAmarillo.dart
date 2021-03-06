import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/HuertoScreen.dart';

class BtnCalcularAmarillo extends StatelessWidget {
  const BtnCalcularAmarillo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return RaisedButton(
      color: kAmarillo,
      elevation: 15,
      onPressed: () {
        Navigator.pop(
          context,
          MaterialPageRoute(builder: (context) => HuertoScreen()),
        );
      },
      child: Row(
        children: [
          Text(
            'Calcular',
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.04,
            ),
          )
        ],
      ),
    );
  }
}

/* 
Container(
      width: 100,
      height: 40,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: kAmarillo,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Calcular',
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.04,
            ),
          ),
        ],
      ),
    );


child: FlatButton(
        color: Colors.white,
        onPressed: () {
          Navigator.pop(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },        
        child: Row(
          children: [
            Text(
              'Calcular',
              style: TextStyle(
                color: Colors.black,
                fontSize: size.width * 0.02,
              ),
            ),
          ],
        ),
      ),
*/
