import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:med_expert/components/bottom_nav_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List catNames = ['Category', 'Materials', 'Classes'];

  List<Color> catColors = [
    Color(0xFF1564c0),
    Color(0xFF1564c0),
    Color(0xFF1564c0),
  ];

  List<Icon> catIcons = [
    Icon(Icons.category, color: Colors.white, size: 30),
    Icon(Icons.event, color: Colors.white, size: 30),
    Icon(Icons.import_contacts_outlined, color: Colors.white, size: 30),
  ];

  List imgList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF1564c0),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.only(left: 3, bottom: 15),
                    child: Text(
                      "Hi, " + FirebaseAuth.instance.currentUser!.displayName!,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Here...",
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                children: [
                  GridView.builder(
                    itemCount: catNames.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.1,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: catColors[index],
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: catIcons[index],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            catNames[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Discover",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1564c0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF1564c0),
                                padding: EdgeInsets.symmetric(horizontal: 80)),
                            child: const Text(
                              "LOGOUT",
                              style: TextStyle(
                                  fontSize: 24, color: Color(0xFFfaf9f9)),
                            ),
                            onPressed: () {
                              FirebaseAuth.instance.signOut();
                              context.go('/');
                            }),
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
