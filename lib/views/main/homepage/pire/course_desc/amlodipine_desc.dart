import 'package:flutter/material.dart';

const String amlodipineDescription =
    'Kaplet Amlodipine Besilate adalah obat antihipertensi yang umumnya digunakan untuk mengatasi tekanan darah tinggi. Kandungan utamanya, amlodipine besilate, bekerja dengan cara melebarkan pembuluh darah, memperlancar aliran darah, dan mengurangi beban kerja jantung. Sebagai calcium channel blocker, amlodipine membantu mengendalikan tekanan darah dengan efektif. Kaplet ini sering diresepkan oleh dokter sebagai bagian dari rencana pengobatan untuk mengelola hipertensi dan kondisi kardiovaskular lainnya. Penting untuk mengikuti dosis yang disarankan dan berkonsultasi dengan profesional kesehatan untuk memastikan penggunaan yang aman dan efektif, terutama jika terdapat kondisi kesehatan lain atau obat-obatan lain yang digunakan.';
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
      amlodipineDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
