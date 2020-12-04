import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/HomeScreen.dart';

class BtnCancelar extends StatelessWidget {
  const BtnCancelar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return RaisedButton(
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
            'Cancelar',
            style: TextStyle(
              color: kVerde,
              fontSize: size.width * 0.045,
            ),
          )
        ],
      ),
    );
  }
}

/* 
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
  
  Container(
      width: 100,
      height: 40,
      margin: EdgeInsets.symmetric(vertical: 40),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: kBackgroundColor2,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(
          color: kVerde,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Cancelar',
            style: TextStyle(
              color: kVerde,
              fontSize: size.width * 0.04,
            ),
          ),
        ],
      ),
    );

*/
