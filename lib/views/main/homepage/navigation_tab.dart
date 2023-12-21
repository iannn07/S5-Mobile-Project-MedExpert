import 'package:flutter/cupertino.dart';
import 'package:med_expert/views/main/homepage/dashboard.dart';
import 'package:med_expert/views/main/homepage/detector/label_view.dart';
import 'package:med_expert/views/main/homepage/pire/course.dart';
import 'package:med_expert/views/main/homepage/profile.dart';

// ignore: must_be_immutable
class NavigationTab extends StatelessWidget {
  final List<String> imgList = [
    'Ambroxol',
    'Amlodipine',
    'Bodrex Flu dan Batuk Berdahak',
    'Bodrex Flu dan Batuk'
        'Dextamine',
    'Diabetes Tipe 1',
    'Diabetes Tipe 2',
    'Transplantasi Jantung',
    'Incidial OD',
    'Panadol Biru',
    'Paramex',
    'Paratusin',
    'Pathology',
    'Simvastatin',
    'Strip Amlodipine',
    'Valsartan',
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
            return ImageLabel();
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
