import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:med_expert/views/main/homepage/navigation_tab.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool showPassword = false;
  var name = TextEditingController();
  var oldPassword = TextEditingController();
  var newPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        middle: Text("Edit Profile"),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              SizedBox(
                height: 80,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("lib/img/doctor.jpg"))),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 4.0),
                    child: Text(FirebaseAuth.instance.currentUser!.displayName!,
                        style: TextStyle(
                            fontSize: 28.0, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: name,
                decoration: InputDecoration(
                  hintText: "Name",
                ),
              ),
              SizedBox(
                height: 35,
              ),
              TextFormField(
                obscureText: true,
                controller: oldPassword,
                decoration: InputDecoration(hintText: "Old Password"),
              ),
              SizedBox(
                height: 35,
              ),
              TextFormField(
                obscureText: true,
                controller: newPassword,
                decoration: InputDecoration(hintText: "New Password"),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 227, 240, 255),
                      padding: EdgeInsets.symmetric(horizontal: 30),
                    ),
                    child: Text(
                      "CANCEL",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  // ElevatedButton(
                  //   onPressed: () async {
                  //     try {
                  //       FirebaseAuth.instance.currentUser!
                  //           .updateDisplayName(name.text);
                  //       Navigator.pushReplacement(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => NavigationTab()));
                  //     } catch (e) {
                  //       print(e);
                  //     }
                  //     if (oldPassword.value.text.isNotEmpty &&
                  //         newPassword.value.text.isNotEmpty) {
                  //       await FirebaseAuth.instance.signInWithEmailAndPassword(
                  //           email: FirebaseAuth.instance.currentUser!.email!,
                  //           password: oldPassword.text);
                  //       FirebaseAuth.instance.currentUser!
                  //           .updatePassword(newPassword.text);
                  //     }
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Color(0xFF1564c0),
                  //     padding: EdgeInsets.symmetric(horizontal: 30),
                  //   ),
                  //   child: Text(
                  //     "SAVE",
                  //     style: TextStyle(fontSize: 14, color: Colors.white),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
