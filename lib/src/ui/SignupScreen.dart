import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/login_signup/Header.dart';
import 'package:botanicare/src/ui/login_signup/SignUpForm.dart';
import 'package:botanicare/src/ui/login_signup/WelcomeText.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: kBackgroundColor,
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
              Header(
                imgUrl: 'assets/singup.svg',
                backcolor: kBackgroundColor,
              ),
              WelcomeText(
                herotext: 'Únete a nosotros',
              ),
              SignUpForm(),
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
    );
  }
}
