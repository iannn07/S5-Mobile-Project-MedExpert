import 'package:flutter/material.dart';
import 'package:med_expert/constants.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/img/Wallpaper MedExpert v2.png"),
                  alignment: Alignment.bottomLeft),
            ),
          ),
          new Container(
            margin: const EdgeInsets.all(16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Hi Doc!",
                    style: primaryTextStyle.copyWith(
                        fontSize: 40, fontWeight: bold),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Starts your journey being a doctor with us",
                    style: primaryTextStyle.copyWith(
                        fontSize: 24, fontWeight: bold),
                  ),
                  Align(
                    alignment: Alignment.center,
                  )
                ]),
          )
        ],
      ),
    );
  }
}
