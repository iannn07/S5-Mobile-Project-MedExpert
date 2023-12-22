import 'package:flutter/material.dart';

const String valsartanDescription =
    'Valsartan adalah obat yang termasuk dalam kelas antagonis reseptor angiotensin II, digunakan untuk mengatasi tekanan darah tinggi (hipertensi) dan kondisi jantung tertentu. Bahan aktif dalam Valsartan bekerja dengan menghambat efek zat kimia bernama angiotensin II, yang dapat menyebabkan penyempitan pembuluh darah dan peningkatan tekanan darah. Dengan merelaksasi pembuluh darah, Valsartan membantu menurunkan tekanan darah, mengurangi beban kerja jantung, dan mengurangi risiko komplikasi kardiovaskular. Obat ini dapat digunakan sendiri atau dalam kombinasi dengan obat antihipertensi lainnya. Penting untuk mengikuti petunjuk dosis yang diresepkan oleh dokter dan berkonsultasi secara teratur untuk memantau respons tubuh serta meminimalkan risiko efek samping atau interaksi obat.';
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
      valsartanDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
