import 'package:flutter/material.dart';

const String infractDescription =
    'Infark miokard akut atau acute myocardial infarction merupakan kejadian nekrosis miokard yang disebabkan oleh sindrom iskemik tak stabil. Infark miokard akut (IMA) disebabkan kerusakan ireversibel pada otot jantung akibat pasokan oksigen yang kurang. Keberadaan infark miokard dapat mengganggu fungsi sistolik maupun diastolik, dan meningkatkan risiko aritmia pada pasien.';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Infarct Myocard'),
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
      infractDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
