import 'package:flutter/material.dart';

const String panadolDescription =
    'Panadol Biru adalah salah satu varian obat dari merek Panadol yang mengandung parasetamol sebagai bahan aktifnya. Obat ini termasuk dalam kelompok analgesik dan antipiretik, berfungsi untuk meredakan rasa sakit dan menurunkan demam. Panadol Biru digunakan untuk mengatasi gejala-gejala seperti sakit kepala, nyeri otot, nyeri gigi, dan demam yang dapat disebabkan oleh berbagai kondisi seperti flu atau infeksi. Dikemas dalam bentuk tablet biru yang mudah dikonsumsi, Panadol Biru dapat menjadi pilihan bagi mereka yang mencari bantuan cepat dan efektif dalam meredakan ketidaknyamanan akibat rasa sakit atau demam. Meskipun merupakan obat yang umumnya dianggap aman, tetapi sebaiknya tetap mengikuti petunjuk dosis yang disarankan dan berkonsultasi dengan profesional kesehatan jika diperlukan, terutama jika ada kondisi kesehatan tertentu atau penggunaan obat-obatan lain yang perlu diperhatikan.';
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
      panadolDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
