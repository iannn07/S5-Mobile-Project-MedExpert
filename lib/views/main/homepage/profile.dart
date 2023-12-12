// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:go_router/go_router.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(32),
              child: Column(children: <Widget>[
                _profilePic(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 4.0),
                  child: Text(FirebaseAuth.instance.currentUser!.displayName!,
                      style: TextStyle(
                          color: black,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold)),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                  child: Text(
                    "Education Application",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                _networkingLinks(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        
                      },
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1564c0),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF1564c0),
                            padding: EdgeInsets.symmetric(horizontal: 30)),
                        child: const Text(
                          "LOGOUT",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFFfaf9f9)),
                        ),
                        onPressed: () {
                          FirebaseAuth.instance.signOut();
                          context.go('/login');
                        }),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(0),
                  child: Divider(
                    color: Color(0xff78909c),
                    height: 50.0,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "ABOUT",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            height: 1.5),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Hi, my name is medExpert, and I believe that educating people about how culture and food correlate helps individuals understand more about themselves. I have nine years of experience exploring and discovering the unique recipes made by communities around the world, and I use my knowledge to create custom and memorable events. I believe that bringing together culture, food and people can help individuals connect and bond, and I intend to bring that experience to you. I believes mindfulness in the workplace is key to success—a tenet she lives out through her interests in yoga, meditation, gardening, and painting. Madison is currently working as a freelance marketing director and is always interested in a challenge.",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
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
        child: SizedBox(height: 20.0, width: 25.0, child: Image.asset(image)),
      );

  Container _profilePic() => Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 15.0),
          child: Stack(
            alignment: const Alignment(0.9, 0.9),
            children: <Widget>[
              const CircleAvatar(
                backgroundImage: AssetImage("lib/img/doctor.jpg"),
                radius: 60.0,
              ),
              Container(
                height: 30.0,
                width: 30.0,
                alignment: Alignment.bottomRight,
                child: Image.asset("lib/img/verified.jpg"),
              ),
            ],
          ),
        ),
      );
}
