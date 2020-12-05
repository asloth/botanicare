import 'package:botanicare/src/service/AuthService.dart';
import 'package:botanicare/src/service/Plant/RegisterPlant.dart';
import 'package:botanicare/src/ui/LogIn.dart';
import 'package:botanicare/src/ui/MenuBar.dart';
import 'package:botanicare/src/ui/SignupScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (context) => AuthService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<AuthService>().authStateChanges,
        ),
        Provider<Plant>(
          create: (context) =>
              Plant(FirebaseFirestore.instance.collection('vegetable')),
        ),
      ],
      child: MaterialApp(
        home: AuthenticationWrapper(),
        routes: {
          '/main': (context) => MenuBar(),
          '/login': (context) => LogIn(),
          '/signup': (context) => SignUp(),
        },
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      return MenuBar();
    }
    return LogIn();
  }
}
