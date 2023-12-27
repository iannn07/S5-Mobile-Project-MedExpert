import 'package:flutter/material.dart';

const String gagalJantung02Description =
    'Gagal jantung akut adalah perkembangan cepat atau perubahan gejala dan tanda gagal jantung yang membutuhkan perhatian medis segera. Gagal jantung akut dapat berupa sebuah sindrom yang terjadi dalam onset baru de novo, maupun secara bertahap atau dekompensata. Gagal jantung akut menyebabkan gejala yang terkait dengan kongesti sistemik, seperti dispnea dan edema. Patofisiologi gagal jantung akut melibatkan proses disfungsi ventrikel, retensi cairan, dan redistribusi cairan. Terdapat berbagai kondisi yang dapat menyebabkan gagal jantung akut, yakni kelainan miokardium seperti infark miokard, aritmia jantung, serta kardiomiopati akibat obat atau infeksi. Pasien gagal jantung akut dapat menunjukkan gejala seperti dispnea, ortopnea, paroxysmal nocturnal dyspnea, penurunan toleransi terhadap aktivitas fisik, kelelahan, dan bengkak pada tungkai bawah. Pada pemeriksaan fisik bisa didapatkan peningkatan tekanan jugular dan kongesti paru.';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gagal Jantung Akut'),
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
      gagalJantung02Description,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
