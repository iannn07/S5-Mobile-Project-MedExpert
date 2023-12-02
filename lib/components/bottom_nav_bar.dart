import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const GNav(
      tabs: [
        //home
        GButton(
          icon: Icons.home,
          iconColor: Colors.grey,
          text: 'Home',
          textColor: Colors.black,
        ),

        //learning
        GButton(
          icon: Icons.book,
          iconColor: Colors.grey,
          text: 'Learning',
          textColor: Colors.black,
        ),

        //quiz
        GButton(
          icon: Icons.book,
          iconColor: Colors.grey,
          text: 'Quiz',
          textColor: Colors.black,
        ),

        //profile
        GButton(
          icon: Icons.book,
          iconColor: Colors.grey,
          text: 'Profile',
          textColor: Colors.black,
        ),
      ],
    );
  }
}
