import 'package:botanicare/src/service/AuthService.dart';
import 'package:provider/provider.dart';
import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      padding: EdgeInsets.fromLTRB(kDefaultPadding, kDefaultPadding * 2,
          kDefaultPadding, kDefaultPadding * 1.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Hola soy el perfil'),
          Spacer(),
          RaisedButton(
            color: kPrimaryColor,
            onPressed: () {
              context.read<AuthService>().signOut();
            },
            child: Text(
              'Cerrar sesión',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
