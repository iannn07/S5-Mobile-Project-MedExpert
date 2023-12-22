import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'course.dart';

class DrugsList extends StatefulWidget {
  @override
  _DrugsListState createState() => _DrugsListState();
}

class _DrugsListState extends State<DrugsList> {
  List<String> drugsList = [
    'Ambroxol',
    'Amlodipine',
    'Bodrex Flu dan Batuk Berdahak',
    'Bodrex Flu dan Batuk',
    'Dextamine',
    'Panadol Biru',
    'Paramex',
    'Paratusin',
    'Simvastatin',
    'Strip Amlodipine',
    'Valsartan',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Daftar Obat'),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: drugsList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(drugsList[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Course(
                    img: drugsList[index],
                    category: 'obat',
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
