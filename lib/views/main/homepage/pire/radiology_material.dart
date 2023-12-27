import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class radiologyMaterial extends StatefulWidget {
  @override
  _radiologyMaterialState createState() => _radiologyMaterialState();
}

class _radiologyMaterialState extends State<radiologyMaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text(
            'Radiology Material',
            style: TextStyle(fontSize: 20),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Container());
  }
}
