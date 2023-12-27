import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pathologyMaterial extends StatefulWidget {
  @override
  _pathologyMaterialState createState() => _pathologyMaterialState();
}

class _pathologyMaterialState extends State<pathologyMaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text(
            'Pathology Material',
            style: TextStyle(fontSize: 20),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Container());
  }
}
