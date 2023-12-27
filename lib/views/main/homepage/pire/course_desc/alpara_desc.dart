import 'package:flutter/material.dart';

const String alparaDescription =
    'Alpara adalah obat yang bermanfaat untuk meringankan gejala flu, seperti demam, sakit kepala, hidung tersumbat, dan bersin-bersin yang disertai batuk. Obat ini tersedia dalam bentuk kaplet dan sirop. Alpara mengandung kombinasi paracetamol, phenylpropanolamine HCl, chlorpheniramine maleate, dan dextromethorphan HBr. Paracetamol berfungsi untuk menurunkan demam dan sakit kepala, sedangkan dextromethorphan bermanfaat untuk meredakan batuk kering. Sementara itu, phenylpropanolamine dan chlorpheniramine dalam Alpara berperan sebagai dekongestan dan antihistamin yang dapat membantu meringankan gejala hidung tersumbat, hidung meler, dan bersin-bersin.';
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
      alparaDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
