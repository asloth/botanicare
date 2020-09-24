import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(215, 219, 213, 86),
      padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Clima',
            style: TextStyle(
              color: Colors.black,
              fontSize: 29,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            color: Color.fromRGBO(248, 250, 247, 98),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.filter_drama,
                  color: Colors.blue,
                ),
                Text(
                  'Lluvia pesada',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.lightBlue,
                  ),
                ),
                Icon(
                  Icons.sim_card_alert,
                  color: Colors.blue,
                ),
                Text(
                  '19° C',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
