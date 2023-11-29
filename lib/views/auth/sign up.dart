import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:med_expert/constants.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Register",
            style: primaryTextStyle.copyWith(fontSize: 40, fontWeight: bold),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Are you ready to be a doctor?",
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Stack(clipBehavior: Clip.none, children: [
            Container(
              height: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFF1564c0)),
            ),
            Positioned(
              left: 0,
              bottom: -23,
              right: 0,
              child: Center(
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: Color(0xFFfaf9f9)),
                onPressed: () => context.push("/homepage"),
                child: Text(
                  'REGISTER',
                  style: TextStyle(fontSize: 16, color: Color(0xFF1564c0)),
                ),
              )),
            )
          ]),
        ],
      )),
    )));
  }
}
