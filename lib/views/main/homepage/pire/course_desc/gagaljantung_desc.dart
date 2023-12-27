import 'package:flutter/material.dart';

const String gagaljantung01Description =
    'Gagal jantung merupakan sekumpulan temuan klinis akibat gangguan struktural dan fungsional terhadap pengisian ventrikel dan ejeksi darah. Gagal jantung biasanya bukanlah suatu kondisi penyakit primer, melainkan merupakan komplikasi tahap akhir dari penyakit lain yang menjadi etiologinya. Gagal jantung dapat disebabkan berbagai kondisi medis, termasuk hipertensi dan infark miokard. Selain itu, gagal jantung juga dapat disebabkan oleh kelainan kongenital, gangguan ginjal, gangguan paru, infeksi, autoimun, hingga keganasan. Gagal jantung juga dapat dibagi lagi menjadi beberapa tahapan berdasarkan temuan klinis, anatomi dan struktur jantung penderita, fraksi ejeksi, serta kapasitas fungsional penderita';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gagal Jantung'),
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
      gagaljantung01Description,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
