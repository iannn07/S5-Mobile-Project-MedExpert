import 'package:flutter/cupertino.dart';
import 'package:med_expert/views/main/homepage/dashboard.dart';
import 'package:med_expert/views/main/homepage/detector/label_detector_view.dart';
import 'package:med_expert/views/main/homepage/pire/course.dart';
import 'package:med_expert/views/main/homepage/profile.dart';

class NavigationTab extends StatelessWidget {
  final List<String> imgList = [
    'Heart',
    'Pathology',
    'Surgery',
    'Drugs',
    'Radiology',
    'Anatomy',
  ];
  @override
  Widget build(BuildContext context) => CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.camera_circle_fill),
              label: 'AI Drugs Detector'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_stack_3d_up), label: 'Courses'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled), label: 'Profile'),
        ],
        activeColor: Color(0xFF1564c0),
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return Dashboard();
          case 1:
            print("1");
            return ImageLabelView();
          case 2:
            print("2");
            return Course(imgList[index]);
          case 3:
            return ProfilePage();
          default:
            throw Exception('Unknown tab index: $index');
        }
      });
}
