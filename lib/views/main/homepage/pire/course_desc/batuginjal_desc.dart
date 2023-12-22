import 'package:flutter/material.dart';

const String batuGinjalDescription =
    'Batu ginjal, atau disebut juga nefrolitiasis, merupakan kondisi di mana endapan keras terbentuk dalam ginjal. Batu ginjal dapat menyebabkan rasa sakit yang parah dan dapat mempengaruhi fungsi ginjal. Mari kita ketahui lebih lanjut tentang penyebab, gejala, serta cara mencegah dan mengelola batu ginjal.Adapun beberapa penyebab terbentuknya batu ginjal diantaranya yaitu, kurangnya Minum Air, diet Tertentu, serta faktor Genetik. Batu ginjal dapat memengaruhi kualitas hidup seseorang, tetapi langkah-langkah pencegahan dan manajemen yang tepat dapat membantu mengurangi risiko dan dampaknya. Penting untuk menjaga gaya hidup sehat, termasuk konsumsi air yang cukup dan diet seimbang, untuk mencegah terbentuknya batu ginjal. Jika mengalami gejala, segera konsultasikan dengan profesional medis untuk diagnosis dan pengelolaan yang tepat.';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Batu Ginjal'),
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
      batuGinjalDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
