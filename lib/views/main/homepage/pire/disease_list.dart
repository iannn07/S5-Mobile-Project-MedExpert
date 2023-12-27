import 'package:flutter/material.dart';
import 'course.dart';

class DiseaseList extends StatefulWidget {
  @override
  _DiseaseListState createState() => _DiseaseListState();
}

class _DiseaseListState extends State<DiseaseList> {
  List<String> diseaseList = [
    'Diabetes Tipe 1',
    'Diabetes Tipe 2',
    'Transplantasi Jantung',
    'Batu Ginjal',
    'Gagal Jantung Akut',
    'Gagal Jantung',
    'Arrythmia',
    'Infract Myocard',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Penyakit'),
      ),
      body: ListView.builder(
        itemCount: diseaseList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(diseaseList[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Course(
                    img: diseaseList[index],
                    category: 'penyakit',
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
