import 'package:flutter/material.dart';

const String cadDescription =
    'Tujuan penatalaksanaan pada sindrom koroner akut adalah mencegah nekrosis sel-sel miokardium dan mengupayakan terjadinya reperfusi ke jaringan miokardium. Pada pasien STEMI, reperfusi secepatnya dengan percutaneous coronary intervention (PCI) atau kateterisasi jantung adalah terapi lini pertama, bila dapat dilakukan dalam 120 menit dari onset gejala. Intervensi ini dapat dilakukan di fasilitas pelayanan tersier. Akan tetapi, apabila PCI tidak dapat dilakukan atau tertunda, maka fibrinolisis harus dilakukan.';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CAD'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: DescriptionWidget(),
        ),
      ),
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle myTextStyle = TextStyle(
      fontSize: 16.0,
      color: Colors.black.withOpacity(0.7),
    );

    return Text(
      cadDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
