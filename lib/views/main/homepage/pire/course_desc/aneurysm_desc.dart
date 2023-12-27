import 'package:flutter/material.dart';

const String aneurysmDescription =
    'Aneurisma aorta adalah dilatasi lokal yang permanen pada aorta, yang menyebabkan diameter aorta menjadi ≥1,5 kali diameter seharusnya. Menurut lokasinya, aneurisma aorta dapat dibedakan menjadi dua, yaitu aneurisma aorta thoracalis dan aneurisma aorta abdominalis. Terbentuknya aneurisma dipengaruhi oleh faktor struktural aorta dan faktor mekanikal. Proses degeneratif dan kelainan genetik merupakan etiologi aneurisma aorta. Kondisi genetik tertentu seperti sindrom Marfan dan sindrom Ehlers-Danlos meningkatkan risiko kejadian aneurisma aorta. Terdapat berbagai faktor risiko aneurisma aorta, seperti jenis kelamin laki-laki, usia >60 tahun, kebiasaan merokok, riwayat hipertensi tidak terkontrol, hingga riwayat keluarga dengan aneurisma aorta sebelumnya. Faktor genetik dan ekspresi gen diketahui juga menjadi salah satu penyebab pada aneurisma aorta abdominalis.';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aneurysm'),
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
      aneurysmDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
