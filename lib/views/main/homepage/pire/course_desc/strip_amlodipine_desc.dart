import 'package:flutter/material.dart';

const String stripAmlodipineDescription =
    'Strip Amlodipine Besilate adalah bentuk obat antihipertensi yang mengandung amlodipine besilate sebagai bahan aktif utamanya. Amlodipine bekerja sebagai calcium channel blocker yang membantu melebarkan pembuluh darah dan meningkatkan aliran darah, sehingga menurunkan tekanan darah. Strip Amlodipine Besilate biasanya digunakan dalam pengobatan tekanan darah tinggi (hipertensi) atau kondisi kardiovaskular lainnya. Kelebihan bentuk strip adalah memudahkan konsumen untuk mengambil dosis yang dibutuhkan dengan lebih praktis. Meskipun amlodipine besilate umumnya dianggap aman, selalu penting untuk mengikuti petunjuk dosis yang disarankan oleh dokter atau apoteker, serta berkonsultasi dengan profesional kesehatan untuk memastikan penggunaan yang aman dan efektif, terutama jika terdapat kondisi kesehatan tertentu atau obat-obatan lain yang digunakan.';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drugs'),
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
      stripAmlodipineDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
