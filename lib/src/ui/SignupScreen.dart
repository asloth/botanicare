import 'package:botanicare/src/service/AuthService.dart';
import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/login_signup/Header.dart';
import 'package:botanicare/src/ui/login_signup/InputField.dart';
import 'package:botanicare/src/ui/login_signup/WelcomeText.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  final TextEditingController newEmailController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();

  SignUp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Header(
              imgUrl: 'assets/singup.svg',
            ),
            Container(
              color: kBackgroundColor,
              height: size.height * 0.55,
              padding: EdgeInsets.fromLTRB(
                kDefaultPadding,
                kDefaultPadding * 0.5,
                kDefaultPadding,
                kDefaultPadding,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    WelcomeText(
                      herotext: 'Únete a nosotros',
                    ),
                    InputField(
                      controller: newEmailController,
                      hintText: 'Correo',
                      icon: Icons.mail,
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
                    SizedBox(height: size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '¿Ya tienes una cuenta? ',
                          style: TextStyle(
                            fontSize: kDefaultPadding * 0.7,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/login');
                          },
                          child: Text(
                            ' Inicia sesión',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
