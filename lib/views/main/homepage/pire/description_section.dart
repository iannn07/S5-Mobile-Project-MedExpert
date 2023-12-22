import 'package:flutter/material.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/amlodipine_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/aneurysm_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/arrythmia_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/batuginjal_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/batukdahak_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/bodrex_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/cad_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/dextamine_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/diabetes1_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/diabetes2_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/gagaljantung_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/gagaljantungakut_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/incidal_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/panadol_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/paramex_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/paratusin_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/ambroxol_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/simvastatin_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/strip_amlodipine_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/transplantasi_jantung_desc.dart';
import 'package:med_expert/views/main/homepage/pire/course_desc/valsartan_desc.dart';

class DescriptionSection extends StatelessWidget {
  final String courseTitle;

  DescriptionSection({required this.courseTitle, required String category});

  @override
  Widget build(BuildContext context) {
    String courseDescription = getCourseDescription(courseTitle);

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              courseDescription,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(0.7),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            SizedBox(height: 10),
            // Row(
            //   children: [
            //     Text(
            //       "Rating : ",
            //       style: TextStyle(
            //         fontSize: 19,
            //         fontWeight: FontWeight.w600,
            //       ),
            //     ),
            //     SizedBox(width: 5),
            //     Icon(
            //       Icons.star,
            //       color: Colors.amber,
            //     ),
            //     SizedBox(width: 5),
            //     Text(
            //       "4.8",
            //       style: TextStyle(
            //         fontSize: 16,
            //         fontWeight: FontWeight.w500,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  String getCourseDescription(String courseTitle) {
    switch (courseTitle) {
      case 'Transplantasi Jantung':
        return transplantJantungDescription;
      case 'Batu Ginjal':
        return batuGinjalDescription;
      case 'Ambroxol':
        return ambroxolDescription;
      case 'Amlodipine':
        return amlodipineDescription;
      case 'Bodrex Flu dan Batuk Berdahak':
        return bodrexdahakDescription;
      case 'Bodrex Flu dan Batuk':
        return bodrexDescription;
      case 'Dextamine':
        return dextamineDescription;
      case 'Diabetes Tipe 1':
        return diabetes1Description;
      case 'Diabetes Tipe 2':
        return diabetes2Description;
      case 'Incidial OD':
        return incidalDescription;
      case 'Panadol Biru':
        return panadolDescription;
      case 'Paramex':
        return paramexDescription;
      case 'Paratusin':
        return paratusinDescription;
      case 'Simvastatin':
        return simvastatinDescription;
      case 'Strip Amlodipine':
        return stripAmlodipineDescription;
      case 'Valsartan':
        return valsartanDescription;
      case 'Gagal Jantung Akut':
        return gagalJantung02Description;
      case 'Gagal Jantung':
        return gagaljantung01Description;
      case 'Arrythmia':
        return arrythmiaDescription;
      case 'CAD':
        return cadDescription;  
      case 'Aneurysm':
        return aneurysmDescription;
      default:
        return '';
    }
  }
}
