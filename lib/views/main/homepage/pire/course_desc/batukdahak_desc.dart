import 'package:flutter/material.dart';

const String bodrexdahakDescription =
    'Bodrex flu dan batuk berdahak mengandung Paracetamol, Phenylephrine HCl, Glyceryl Guaiacolate, Bromhexine HCl. Komponen-komponen tersebut berfungsi sebagai penurun demam dan penghilang rasa sakit, pengurang pembengkakan hidung, agen ekspektoran, dan mukolitik. Obat ini dipergunakan untuk mengatasi gejala flu seperti demam, sakit kepala, bersin-bersin, dan hidung tersumbat yang disertai batuk berdahak. Memberikan kenyamanan pada gejala flu, termasuk penurunan demam, peningkatan pernapasan, dan meredakan batuk berdahak.';
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
      bodrexdahakDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
