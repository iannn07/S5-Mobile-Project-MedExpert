import 'package:flutter/material.dart';

const String heartDescription =
    'Transplantasi jantung adalah prosedur yang menggantikan jantung yang tidak berfungsi dengan jantung dari donor yang cocok. Pada awalnya, hasil pasca transplantasi kurang memuaskan karena komplikasi pasca tindakan yang rumit, seperti reaksi penolakan dan infeksi. Namun, dengan dimulainya penggunaan imunosupresan, tingkat kelangsungan hidup pasca transplantasi jantung meningkat, dan sejak itu, prosedur ini menjadi penanganan standar untuk kasus gagal jantung tahap akhir. Transplantasi jantung dapat dilakukan pada pasien dengan gagal jantung kongestif tahap akhir yang diharapkan hidupnya kurang dari 1 tahun tanpa transplantasi. Pedoman American College of Cardiology dan American Heart Association (ACC/AHA) juga mencatat bahwa transplantasi jantung dapat dipertimbangkan untuk pasien dengan syok kardiogenik yang tidak merespon, aritmia ventrikel yang mengancam nyawa, dan gagal jantung kongenital tanpa hipertensi pulmonal. Tidak disarankan melakukan transplantasi jantung pada pasien yang berusia di atas 65 tahun. Selain itu, tindakan ini sebaiknya dihindari pada pasien dengan infeksi sistemik aktif, gangguan sistemik seperti penyakit kolagen-vaskular dan penyakit sel sabit, keganasan aktif, riwayat penyalahgunaan zat, dan ketidakmampuan pasien untuk mematuhi tindak lanjut pasca operasi. Gagal ginjal dan kelainan hati yang bersifat irreversible juga menjadi kontraindikasi untuk transplantasi jantung.';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Transplantasi Jantung'),
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
      heartDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
