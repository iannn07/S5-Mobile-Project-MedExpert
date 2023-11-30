import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1564c0),
                  padding: EdgeInsets.symmetric(horizontal: 80)),
              child: const Text(
                "LOGOUT",
                style: TextStyle(fontSize: 24, color: Color(0xFFfaf9f9)),
              ),
              onPressed: () {
                FirebaseAuth.instance.signOut();
                context.go('/');
              }),
        )
      ]),
    ));
  }
}
