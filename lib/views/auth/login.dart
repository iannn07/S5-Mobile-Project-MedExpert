import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:med_expert/constants.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFfaf9f9),
        body: Container(
          // margin: const EdgeInsets.all(16.0),
          // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 56),
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xFF1564c0), Color(0xFFfaf9f9)])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Welcome Back!",
                      style: primaryTextStyle.copyWith(
                          fontSize: 40, fontWeight: bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "How are you?",
                      style: primaryTextStyle.copyWith(
                          fontSize: 24, fontWeight: bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFfaf9f9),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 60),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Color(0xFFfaf9f9),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(225, 21, 100, 192),
                                    blurRadius: 20,
                                    offset: Offset(0, 10)),
                              ]),
                          child: Column(
                            children: <Widget>[Container()],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
