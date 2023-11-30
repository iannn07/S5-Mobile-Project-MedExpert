import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:med_expert/firebase_options.dart';
import 'package:med_expert/splash.dart';
import 'package:med_expert/views/auth/signup.dart';
import 'package:med_expert/views/auth/login.dart';
import 'package:med_expert/views/main/homepage/dashboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
  GoRoute(path: "/dashboard", builder: ((context, state) => Dashboard())),
]);
