import 'package:flutter/cupertino.dart';
import 'package:med_expert/views/main/homepage/dashboard.dart';
import 'package:med_expert/views/main/homepage/detector/label_view.dart';
import 'package:med_expert/views/main/homepage/pire/course.dart';
import 'package:med_expert/views/main/homepage/profile.dart';
import 'package:med_expert/views/main/homepage/pire/drugs_list.dart';
import 'package:med_expert/views/main/homepage/pire/disease_list.dart';

class NavigationTab extends StatelessWidget {
  final List<String> imgList = [
    'Ambroxol',
    'Amlodipine',
    'Bodrex Batuk Berdahak',
    'Bodrex Flu dan Batuk',
    'Dextamine',
    'Diabetes Tipe 1',
    'Diabetes Tipe 2',
    'Transplantasi Jantung',
    'Incidial OD',
    'Panadol Biru',
    'Paramex',
    'Paratusin',
    'Batu Ginjal',
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
                icon: Icon(CupertinoIcons.square_stack_3d_up), label: 'Lists'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled), label: 'Profile'),
          ],
          activeColor: Color(0xFF1564c0),
        ),
        tabBuilder: (context, index) {
          Widget selectedTab;
          switch (index) {
            case 0:
              selectedTab = Dashboard(imgList: imgList);
              break;
            case 1:
              selectedTab = ImageLabel();
              break;
            case 2:
            case 3:
              selectedTab = IndexedStack(
                index: index - 2,
                children: [
                  DrugsList(),
                  DiseaseList(),
                ],
              );
              break;
            case 4:
              selectedTab = ProfilePage();
              break;
            default:
              throw Exception('Unknown tab index: $index');
          }
          return selectedTab;
        },
      );
}
