import 'dart:ui';
import 'package:botanicare/src/service/AuthService.dart';
import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/login_signup/InputField.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:botanicare/src/ui/LogIn.dart';

class SignUpForm extends StatefulWidget {
  SignUpForm({Key key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController newEmailController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Registro exitoso'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Felicidades por Registrarte!'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Gracias'),
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => LogIn()),
                  );
                },
              ),
            ],
          );
        },
      );
    }

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          InputField(
            hintText: 'Nombre',
          ),
          InputField(
            controller: newEmailController,
            hintText: 'Correo',
            icon: Icons.mail,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: kBackgroundColor2,
              borderRadius: BorderRadius.circular(16),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: kPrimaryColor,
                ),
                value: dropdownValue,
                isExpanded: true,
                hint: dropdownValue != null
                    ? null
                    : Text(
                        'Select Value',
                      ),
                style: TextStyle(
                  color: kTextColor,
                ),
                items: <String>[
                  'Casero',
                  'Biohuerto',
                ].map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
              ),
            ),
          ),
          InputField(
            hintText: 'Direccion',
            icon: Icons.location_on,
          ),
          InputField(
            controller: newPasswordController,
            hintText: 'Contraseña',
            icon: Icons.lock,
            secretField: true,
          ),
          SizedBox(height: size.height * 0.03),
          RaisedButton(
            color: kPrimaryColor,
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding * 0.7,
            ),
            onPressed: () {
              if (_formKey.currentState.validate()) {
                context.read<AuthService>().signUp(
                      email: newEmailController.text.trim(),
                      password: newPasswordController.text.trim(),
                    );
                _showMyDialog();
              }
              // if (flag == 'Signed up') {
              //   Navigator.of(context).pushNamed('/main');
              // }
            },
            child: Text(
              'REGISTRARSE',
              style: TextStyle(
                color: kBackgroundColor2,
                fontSize: 17,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
