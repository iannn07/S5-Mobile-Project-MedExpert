import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class surgeryMaterial extends StatefulWidget {
  @override
  _surgeryMaterialState createState() => _surgeryMaterialState();
}

class _surgeryMaterialState extends State<surgeryMaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text(
            'Surgery Material',
            style: TextStyle(fontSize: 20),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Container());
  }
}
