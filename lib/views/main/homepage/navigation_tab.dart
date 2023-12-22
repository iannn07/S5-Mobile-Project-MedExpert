import 'package:flutter/cupertino.dart';
import 'package:med_expert/views/main/homepage/dashboard.dart';
import 'package:med_expert/views/main/homepage/detector/label_view.dart';
import 'package:med_expert/views/main/homepage/profile.dart';
import 'package:med_expert/views/main/homepage/pire/drugs_list.dart';
import 'package:med_expert/views/main/homepage/pire/disease_list.dart';

class NavigationTab extends StatelessWidget {
  final List<String> imgList = [
    'Ambroxol',
    'Amlodipine',
    'Bodrex Flu dan Batuk Berdahak',
    'Bodrex Flu dan Batuk',
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
                icon: Icon(CupertinoIcons.house_fill), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.camera_viewfinder),
                label: 'AI Detector'),
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
              return Dashboard(imgList: imgList);
            case 1:
              return ImageLabel();
            case 2:
              selectedTab = IndexedStack(
                index: index - 2,
                children: [
                  DrugsList(),
                  DiseaseList(),
                ],
              );
              break;
            case 3:
              return ProfilePage();
            default:
              throw Exception('Unknown tab index: $index');
          }
          return selectedTab;
        },
      );
}
