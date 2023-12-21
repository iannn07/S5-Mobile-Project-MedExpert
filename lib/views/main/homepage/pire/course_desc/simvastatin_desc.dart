import 'package:flutter/material.dart';

const String simvastatinDescription =
    'Simvastatin 10 Mg adalah obat yang termasuk dalam kelas statin, digunakan untuk mengatasi kolesterol tinggi dan mengurangi risiko penyakit kardiovaskular. Bahan aktif utama dalam Simvastatin adalah simvastatin, yang bekerja dengan menghambat produksi kolesterol dalam tubuh. Dengan mengurangi kadar kolesterol LDL (kolesterol jahat) dan meningkatkan kadar kolesterol HDL (kolesterol baik), Simvastatin membantu menjaga keseimbangan lipid dalam darah. Dosis 10 mg umumnya digunakan sebagai awal terapi, dan penyesuaian dosis lebih lanjut dapat dilakukan berdasarkan respons pasien. Pemakaian Simvastatin biasanya dikombinasikan dengan perubahan gaya hidup sehat, seperti pola makan seimbang dan olahraga teratur. Meskipun obat ini umumnya efektif, penting untuk mematuhi petunjuk penggunaan dan berkonsultasi dengan dokter untuk pemantauan yang tepat serta meminimalkan risiko efek samping atau interaksi obat.';
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
      simvastatinDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
