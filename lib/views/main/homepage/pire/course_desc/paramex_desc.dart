import 'package:flutter/material.dart';

const String paramexDescription =
    'Paramex adalah obat kombinasi yang mengandung dua bahan aktif utama, yaitu parasetamol dan dextromethorphan hydrobromide. Parasetamol berperan sebagai analgesik (penghilang rasa sakit) dan antipiretik (penurun demam), sementara dextromethorphan hydrobromide merupakan agen antitusif yang membantu meredakan batuk. Kombinasi ini membuat Paramex efektif dalam meredakan gejala flu dan batuk. Umumnya, Paramex direkomendasikan untuk mengatasi nyeri, demam, dan batuk yang sering terjadi selama infeksi saluran pernapasan atas. Meskipun diketahui sebagai obat yang umumnya aman, selalu penting untuk mengikuti petunjuk dosis yang disarankan dan berkonsultasi dengan profesional kesehatan jika ada pertanyaan atau kondisi kesehatan tertentu yang perlu diperhatikan sebelum penggunaan.';
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
      paramexDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
