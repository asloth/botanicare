import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/login_signup/InputField.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/comon/BackBitacora.dart';
import 'package:botanicare/src/ui/bitacora/BitacoraHistoria.dart';

class BitacoraScreen extends StatelessWidget {
  const BitacoraScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: BackBitacora(
          child: Container(
            height: size.height,
            padding: EdgeInsets.fromLTRB(
              kDefaultPadding,
              25,
              kDefaultPadding,
              kDefaultPadding * 0.9,
            ),
            //child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  'Bitácora',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: size.height * 0.05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                InputField(
                  hintText: 'Ingrese un nombre para buscar...',
                  icon: Icons.search,
                ),
                SizedBox(height: size.height * 0.02),
                BitacoraHistoria(),
                SizedBox(height: size.height * 0.02),
              ],
            ),
            //),
          ),
        ),
      ),
    );
  }
}
