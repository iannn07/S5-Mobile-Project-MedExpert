import 'package:flutter/material.dart';
import 'package:med_expert/views/auth/login.dart';
import 'package:med_expert/views/auth/sign up.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => LoginPage(),
      'signup': (context) => SignUp()
    },
  ));
}
