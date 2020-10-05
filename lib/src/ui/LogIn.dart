import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/login/EmailInput.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/service/AuthService.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            Container(
              height: size.height * 0.45,
              color: kBackgroundColor2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  kDefaultPadding * 0.8,
                  kDefaultPadding * 1.5,
                  kDefaultPadding * 0.8,
                  0,
                ),
                child: SvgPicture.asset(
                  'assets/welcome-door.svg',
                ),
              ),
            ),
            Container(
              color: kBackgroundColor,
              height: size.height * 0.55,
              padding: EdgeInsets.fromLTRB(
                kDefaultPadding,
                kDefaultPadding * 0.5,
                kDefaultPadding,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Hola! Bienvenido a Botanicare',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InputField(
                    controller: emailController,
                    hintText: 'Correo',
                    icon: Icons.person,
                  ),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(labelText: "Contraseña"),
                  ),
                  Spacer(),
                  RaisedButton(
                    color: kPrimaryColor,
                    onPressed: () {
                      context.read<AuthService>().signIn(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                          );
                    },
                    child: Text(
                      "Ingresar",
                      style: TextStyle(
                        color: kBackgroundColor2,
                        fontSize: 17,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
