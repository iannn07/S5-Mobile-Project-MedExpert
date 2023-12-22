import 'package:flutter/material.dart';

const String diabetes1Description =
    'Diabetes mellitus tipe 1 (T1DM) merupakan suatu kondisi autoimun yang bersifat kronis, yang menghasilkan kekurangan absolut dalam produksi insulin oleh pankreas. Pasien yang mengidap T1DM memerlukan penggunaan insulin sepanjang hidupnya untuk mencegah terjadinya hiperglikemia, dekompensasi metabolik, dan ketoasidosis diabetik yang dapat mengancam jiwa. Walaupun insiden tertinggi diabetes mellitus tipe 1 terjadi pada masa pubertas dan awal dewasa, onset baru penyakit ini dapat terjadi pada semua rentang usia. Prevalensi global diabetes mellitus tipe 1 mencapai 5,9 per 10.000 orang, sementara insidensinya melaporkan peningkatan yang signifikan dalam lima dekade terakhir, saat ini diperkirakan mencapai 15 per 100.000 orang per tahun. Diagnosis diabetes mellitus tipe 1 harus dipertimbangkan pada pasien yang mengalami hiperglikemia, yang dapat dikenali melalui gejala polidipsia, poliuria, dan polifagia. Pasien mungkin juga menunjukkan tanda ketosis, penurunan berat badan yang cepat, indeks massa tubuh (IMT) di bawah 25 kg/m2, dan memiliki riwayat penyakit autoimun pribadi atau dalam keluarga. Terapi penggantian insulin saat ini menjadi pilihan utama untuk mengatasi diabetes mellitus tipe 1. Regimen pengobatan melibatkan kombinasi perawatan diet intensif bersama dengan pemberian insulin eksogen seumur hidup. Insulin dapat diberikan melalui beberapa suntikan harian atau menggunakan pompa insulin. Diabetes mellitus tipe 1 dapat menimbulkan komplikasi jangka panjang, yang umumnya dapat diklasifikasikan menjadi mikrovaskular dan makrovaskular. Sebagai contoh, komplikasi makrovaskular dapat melibatkan penyakit arteri perifer, sementara komplikasi mikrovaskular dapat mencakup nefropati dan retinopati.';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Diabetes Melitus Tipe 2'),
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
      diabetes1Description,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
