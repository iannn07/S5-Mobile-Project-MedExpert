import 'package:flutter/material.dart';


class SettingUI  extends StatelessWidget {
  const SettingUI ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setting UI",
      home: settingProfilePage(),
    );
  }
}

class settingProfilePage extends StatefulWidget {
  const settingProfilePage({super.key});

  @override
  State<settingProfilePage> createState() => _settingProfilePageState();
}

class _settingProfilePageState extends State<settingProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
          ),
        ],
      ),
      body: Container(
        
      ),
    );
  }
}