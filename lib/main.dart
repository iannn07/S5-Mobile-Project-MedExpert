import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:med_expert/main%20page.dart';
import 'package:med_expert/views/auth/sign up.dart';
import 'package:med_expert/views/auth/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'MedExpert Router',
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(routes: [
  GoRoute(path: "/", builder: ((context, state) => const MainPage())),
  GoRoute(path: "/login", builder: ((context, state) => LoginPage())),
  GoRoute(path: "/signup", builder: ((context, state) => SignUp())),
]);
