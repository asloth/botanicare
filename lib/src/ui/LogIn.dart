import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/login_signup/Header.dart';
import 'package:botanicare/src/ui/login_signup/InputField.dart';
import 'package:botanicare/src/ui/login_signup/WelcomeText.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/service/AuthService.dart';
import 'package:provider/provider.dart';

class LogIn extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Header(),
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
                    WelcomeText(),
                    InputField(
                      controller: emailController,
                      hintText: 'Correo',
                      icon: Icons.person,
                    ),
                    InputField(
                      controller: passwordController,
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
                        context.read<AuthService>().signIn(
                              email: emailController.text.trim(),
                              password: passwordController.text.trim(),
                            );
                      },
                      child: Text(
                        "INGRESAR",
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
                          '¿No tienes una cuenta?',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/signup');
                          },
                          child: Text(
                            ' Regístrate',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
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
