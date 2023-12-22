import 'package:flutter/material.dart';

const String paratusinDescription =
    'Paratusin adalah obat ekspektoran yang digunakan untuk meredakan batuk dengan memfasilitasi pengeluaran lendir dari saluran pernapasan. Kandungan utama dalam Paratusin meliputi guaifenesin, sebuah zat aktif yang membantu mengencerkan dan melonggarkan lendir sehingga memudahkan pengeluarannya. Obat ini biasanya diresepkan untuk mengatasi batuk berdahak yang disertai dengan kondisi seperti bronkitis, flu, atau infeksi saluran pernapasan atas. Penggunaan Paratusin dapat membantu meredakan iritasi pada tenggorokan dan memfasilitasi pernapasan yang lebih nyaman. Seperti dengan obat lainnya, penting untuk mengikuti petunjuk dosis yang disarankan oleh dokter atau apoteker, serta memperhatikan kontraindikasi atau interaksi obat yang mungkin ada.';
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
      paratusinDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
