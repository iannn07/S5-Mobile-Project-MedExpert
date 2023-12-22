import 'package:flutter/material.dart';

const String arrythmiaDescription =
    'Aritmia adalah gangguan pada frekuensi atau irama denyut jantung. Berdasarkan frekuensinya, aritmia dapat terbagi menjadi dua, yaitu bradiaritmia dan takiaritmia. Bradiaritmia memiliki frekuensi kurang dari 60 kali per menit, sedangkan takiaritmia memiliki frekuensi lebih dari 100 kali per menit. Secara umum, aritmia disebabkan oleh gangguan impuls pada otot jantung. Gangguan impuls dapat berupa pembentukannya di nodus SA maupun konduksinya. Aritmia sendiri memiliki etiologi yang luas, seperti disfungsi otonomik, kardiomiopati, infark miokard, medikamentosa, kelainan metabolik, hingga trauma atau cedera akibat tindakan bedah';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Diabetes Melitus Tipe 2'),
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
      arrythmiaDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
