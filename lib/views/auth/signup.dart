import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:med_expert/views/auth/auth_service.dart';

class SignUp extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFfaf9f9),
        body: Container(
          // margin: const EdgeInsets.all(16.0),
          // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 56),
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                Color(0xFF1564c0),
                Color.fromARGB(255, 62, 120, 188),
                Color(0xFFfaf9f9)
              ])),
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
                      "Register",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Are you ready to be a doctor?",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 75,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFfaf9f9),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 40),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFfaf9f9),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(225, 21, 100, 192),
                                    blurRadius: 20,
                                    offset: Offset(0, 5)),
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Color(0xFF1564c0)))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Your Name",
                                      hintStyle:
                                          TextStyle(color: Color(0xFF1564c0)),
                                      border: InputBorder.none),
                                  controller: _nameController,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Color(0xFF1564c0)))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Your Email",
                                      hintStyle:
                                          TextStyle(color: Color(0xFF1564c0)),
                                      border: InputBorder.none),
                                  controller: _emailController,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(20),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle:
                                          TextStyle(color: Color(0xFF1564c0)),
                                      border: InputBorder.none),
                                  controller: _passwordController,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF1564c0),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 80)),
                              child: const Text(
                                "SIGN UP",
                                style: TextStyle(
                                    fontSize: 24, color: Color(0xFFfaf9f9)),
                              ),
                              onPressed: () async {
                                final message = await AuthService()
                                    .registration(
                                        name: _nameController.text,
                                        email: _emailController.text,
                                        password: _passwordController.text);
                                if (message!.contains('Success')) {
                                  context.push('/home');
                                }
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(message)));
                              }),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CupertinoButton(
                          child: const Text("Already have an account? Sign In"),
                          onPressed: () => context.push('/login'),
                        ),
                        // Container(
                        //   padding: EdgeInsets.symmetric(horizontal: 80),
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     children: <Widget>[
                        //       Image(
                        //         image: AssetImage(
                        //             "lib/img/Login Hospital Vector.png"),
                        //         alignment: Alignment.center,
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
