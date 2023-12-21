import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            "Penyakit jantung bawaan merupakan berbagai kelainan struktur jantung yang terjadi sebelum kelahiran. Kondisi yang disebut juga penyakit jantung bawaan ini disebabkan oleh kelainan perkembangan jantung janin. Namun, penyakit tersebut tidak termasuk penyakit genetik dengan gejala jantung seperti sindrom Marfan atau kardiomiopati hipertrofik. Beberapa bentuk kelainan jantung bawaan antara lain cacat septum atrium (ASD), cacat septum ventrikel (VSD), cacat septum atrioventrikular (AVSD), dan paten duktus arteriosus (PDA). Berdasarkan pedoman American Heart Association (AHA), kelainan jantung bawaan dapat diklasifikasikan menjadi empat kategori: lesi shunt, lesi obstruktif sisi kiri, lesi sisi kanan, dan lesi gabungan. Selain itu, penyakit jantung bawaan juga dapat digolongkan menjadi penyakit jantung sianotik dan penyakit jantung non-sianotik. Penyakit jantung bawaan sianotik ditandai dengan adanya  pirau  yang memungkinkan darah mengalir dari ventrikel kanan ke ventrikel kiri. Sedangkan penyakit jantung bawaan asianotik ditandai dengan adanya sambungan shunt yang menyebabkan aliran darah dari ventrikel kiri ke ventrikel kanan. Prinsip pengobatan penyakit jantung bawaan adalah perawatan ortodontik. Koreksi dapat dilakukan melalui pembedahan. Oleh karena itu, pasien dengan kelainan jantung bawaan sebaiknya dirujuk ke ahli jantung atau ahli bedah jantung untuk mendapatkan tindakan korektif atau paliatif.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.7),
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                "Course Length : ",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                Icons.timer,
                color: Colors.blue,
              ),
              SizedBox(width: 5),
              Text(
                "15 Hours",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "Rating : ",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(width: 5),
              Text(
                "4.8",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
