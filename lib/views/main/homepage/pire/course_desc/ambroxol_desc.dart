import 'package:flutter/material.dart';

const String ambroxolDescription =
    'Ambroxol merupakan obat mukolitik yang dipakai untuk meredakan batuk pada kondisi seperti flu biasa, faringitis, bronkitis akut, dan penyakit paru obstruktif kronik. Fungsi utama Ambroxol adalah mengurangi produksi lendir berlebihan dalam sistem pernapasan. Sifat sekretolitik dan sekretomotorik Ambroxol berperan dalam memfasilitasi pengeluaran lendir dari saluran pernapasan. Tambahan, Ambroxol dapat menghasilkan dan melepaskan zat surfaktan dari sel pneumosit tipe II, membantu mengurangi kelekatannya pada dinding bronkus. Ambroxol, yang berasal dari senyawa bromhexine, memiliki efek serupa dengan perbedaan struktural pada tingkat kimia, termasuk penambahan kelompok hydroksil dan penghapusan kelompok metil. Perbedaan ini memberikan Ambroxol efek tambahan, termasuk sifat antiinflamasi, antioksidan, anestesi lokal, serta sifat antiviral dan antibakteri pada kadar tertentu. Biasanya, Ambroxol digunakan sebagai pilihan pertama untuk mengatasi batuk akut yang sering terjadi pada pasien dengan bronkitis atau flu biasa. Selain itu, Ambroxol juga telah menunjukkan manfaat dalam penanganan penyakit Gaucher dan Parkinson dengan meningkatkan enzim glukoserebrosidase.';
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
      ambroxolDescription,
      style: myTextStyle,
      textAlign: TextAlign.justify,
    );
  }
}
