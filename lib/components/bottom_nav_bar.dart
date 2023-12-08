import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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

        GButton(
          icon: Icons.import_contacts_outlined,
          iconColor: Colors.grey,
          text: 'Materials',
          textColor: Colors.black,
        ),

        GButton(
          icon: Icons.event,
          iconColor: Colors.grey,
          text: 'Classes',
          textColor: Colors.black,
        ),

        GButton(
          icon: Icons.account_circle_rounded,
          iconColor: Colors.grey,
          text: 'Profile',
          textColor: Colors.black,
        ),
      ],
    );
  }
}
