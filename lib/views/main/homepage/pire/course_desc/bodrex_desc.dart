import 'package:flutter/material.dart';

const String bodrexDescription =
    'Bodrex flu dan batuk mengandung Paracetamol, Dextromethorphan, dan Phenylephrine yang berfungsi sebagai penurun demam dan penghilang rasa sakit, pengurang pembengkakan hidung, serta obat penekan batuk. Membantu mengatasi gejala flu seperti demam, sakit kepala, hidung tersumbat, dan bersin-bersin pada kondisi batuk tanpa dahak.';
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
      bodrexDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
