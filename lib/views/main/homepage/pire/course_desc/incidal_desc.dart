import 'package:flutter/material.dart';

const String incidalDescription =
    'Incidal OD adalah obat antihistamin yang umumnya digunakan untuk mengatasi reaksi alergi seperti rinitis alergi dan urtikaria. Kandungan utama Incidal OD adalah cetirizine, sejenis antihistamin yang bekerja dengan menghambat efek histamin dalam tubuh, mengurangi gejala alergi seperti hidung tersumbat, bersin-bersin, dan gatal-gatal. Incidal OD biasanya diresepkan oleh profesional kesehatan untuk meredakan berbagai manifestasi alergi. Penting untuk mengikuti petunjuk penggunaan yang disarankan dan konsultasi dengan dokter sebelum mengonsumsinya, terutama jika terdapat kondisi kesehatan atau penggunaan obat-obatan lain yang perlu diperhatikan.';
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
      incidalDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
