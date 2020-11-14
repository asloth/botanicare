import 'package:botanicare/src/service/AuthService.dart';
import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/login_signup/InputField.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpForm extends StatefulWidget {
  SignUpForm({Key key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController newEmailController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String dropdownValue = 'Casero';

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
          DropdownButton<String>(
            value: dropdownValue,
            style: TextStyle(color: kTextColor),
            items: <String>[
              'Casero',
              'Biohuerto',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
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
              context.read<AuthService>().signUp(
                    email: newEmailController.text.trim(),
                    password: newPasswordController.text.trim(),
                  );
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
