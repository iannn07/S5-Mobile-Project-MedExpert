import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:med_expert/views/main/CRUD/edit_profile.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  var theme1 = Colors.white;
  var theme2 = const Color(0xff2E324F);
  var white = Colors.white;
  var black = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Scaffold(
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _profilePic(context),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 4.0),
                  child: Text(FirebaseAuth.instance.currentUser!.displayName!,
                      style: TextStyle(
                          color: black,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold)),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                  child: Text(
                    "Education Application",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                _networkingLinks(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF1564c0),
                          padding: EdgeInsets.symmetric(horizontal: 30)),
                      child: const Text(
                        "EDIT PROFILE",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFFfaf9f9)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => EditProfilePage()));
                      },
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 227, 240, 255),
                            padding: EdgeInsets.symmetric(horizontal: 30)),
                        child: const Text(
                          "LOGOUT",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        onPressed: () {
                          FirebaseAuth.instance.signOut();
                          context.go('/login');
                        }),
                  ],
                ),
              ]),
        ),
      ),
    );
  }

  Row _networkingLinks() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _networkIcon("lib/img/twitter.png"),
          _networkIcon("lib/img/meduium.png"),
          _networkIcon("lib/img/linkedin.png"),
        ],
      );

  Padding _networkIcon(String image) => Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 15.0),
        child: SizedBox(height: 30, width: 35, child: Image.asset(image)),
      );

  Container _profilePic(BuildContext context) => Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 15.0),
          child: Stack(
            alignment: const Alignment(0.9, 0.9),
            children: <Widget>[
              const CircleAvatar(
                backgroundImage: AssetImage("lib/img/doctor.jpg"),
                radius: 80,
              ),
            ],
          ),
        ),
      );
}
