import 'package:flutter/material.dart';

const String dextamineDescription =
    'Dextamine berperan dalam penanganan rhinitis alergi, alergi obat, asma, hay fever, dan dermatitis kontak atau atopik. Kandungan dexamethasone dalam Dextamine berfungsi menghambat pelepasan zat yang dapat memicu peradangan dalam tubuh. Sementara itu, dexchlorpheniramine maleate, sebagai komponen tambahan, bekerja dengan cara mengurangi efek histamin untuk mengatasi berbagai reaksi alergi. Penting dicatat bahwa Dextamine termasuk obat keras, sehingga memerlukan resep dari dokter sebelum penggunaannya.';
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
      dextamineDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
