import 'package:flutter/material.dart';
import 'package:med_expert/constants.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
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
                    "Register",
                    style: primaryTextStyle.copyWith(
                        fontSize: 40, fontWeight: bold),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Are you ready to be a doctor?",
                    style: primaryTextStyle.copyWith(fontSize: 24),
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
