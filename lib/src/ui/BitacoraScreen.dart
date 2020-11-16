import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/login_signup/InputField.dart';
import 'package:flutter/material.dart';

class BitacoraScreen extends StatelessWidget {
  const BitacoraScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: kBackgroundColor,
      padding: EdgeInsets.fromLTRB(kDefaultPadding, kDefaultPadding * 1.2,
          kDefaultPadding, kDefaultPadding * 0.9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: Text(
              'Registro de cosecha',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kTextColor,
                fontSize: kDefaultPadding * 1.2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          InputField(
            hintText: 'valor 1',
            icon: Icons.room_service,
          ),
          InputField(
            hintText: 'valor 1',
            icon: Icons.room_service,
          ),
          InputField(
            hintText: 'valor 1',
            icon: Icons.room_service,
          ),
        ],
      ),
    );
  }
}
