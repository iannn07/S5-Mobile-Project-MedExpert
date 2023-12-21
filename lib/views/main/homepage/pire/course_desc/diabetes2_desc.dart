import 'package:flutter/material.dart';

const String diabetes2Description =
    'Diabetes mellitus tipe 2 (DM tipe 2) adalah suatu kondisi metabolik yang bersifat kronis dan progresif, ditandai oleh tingginya kadar gula darah akibat resistensi insulin, sekresi insulin yang tidak memadai, dan ekskresi glukagon yang tidak normal. Hubungan erat penyakit ini dengan faktor risiko seperti usia, obesitas, gaya hidup kurang aktif, dan faktor keturunan. Estimasi prevalensi global DM tipe 2 mencapai 9,3% pada populasi orang dewasa dan terus meningkat pada kelompok anak-anak, individu obesitas, dan lansia. Sebanyak 90% dari seluruh kasus diabetes terkait dengan DM tipe 2, dan komplikasi yang muncul sebagai dampaknya menjadi penyebab utama kematian akibat penyakit ini. Diagnosis DM tipe 2 didasarkan pada sejumlah faktor, termasuk riwayat penyakit, keluhan, gejala, tanda klinis, kadar gula darah puasa, kadar gula darah 2 jam setelah makan, hemoglobin A1c (HbA1c), uji antibodi, dan C-peptide untuk membedakannya dari diabetes mellitus tipe 1. Standar diagnostik di Indonesia melibatkan pemeriksaan kadar glukosa darah dan HbA1c. Tujuan manajemen DM tipe 2 adalah mengontrol kadar gula darah untuk mencegah komplikasi, serta memungkinkan penderita menjalani kehidupan sehari-hari dan bekerja seperti orang normal. Strategi penanganan melibatkan penggunaan obat hipoglikemik oral (OHO), seperti metformin, atau kombinasi terapi dengan insulin eksogen, diet ketat, rutin berolahraga, perbaikan gaya hidup, pemantauan mandiri kadar gula darah harian, dan follow-up teratur.';
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
      diabetes2Description,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
