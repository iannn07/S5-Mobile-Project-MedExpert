import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class anatomyMaterial extends StatefulWidget {
  @override
  _anatomyMaterialState createState() => _anatomyMaterialState();
}

class _anatomyMaterialState extends State<anatomyMaterial> {
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
