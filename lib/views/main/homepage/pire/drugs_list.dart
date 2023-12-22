import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'course.dart';

class DrugsList extends StatefulWidget {
  @override
  _DrugsListState createState() => _DrugsListState();
}

class _DrugsListState extends State<DrugsList> {
  List<String> drugsList = [
    'Ambroxol',
    'Amlodipine',
    'Bodrex Flu dan Batuk Berdahak',
    'Bodrex Flu dan Batuk',
    'Dextamine',
    'Panadol Biru',
    'Paramex',
    'Paratusin',
    'Simvastatin',
    'Strip Amlodipine',
    'Valsartan',
  ];
  
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Ambroxol"},
    {"id": 2, "name": "Amlodipine"},
    {"id": 3, "name": "Bodrex Flu dan Batuk Berdahak"},
    {"id": 4, "name": "Bodrex Flu dan Batuk"},
    {"id": 5, "name": "Dextamine"},
    {"id": 6, "name": "Panadol"},
    {"id": 7, "name": "Paramex"},
    {"id": 8, "name": "Paratusin"},
    {"id": 9, "name": "Simvastatin"},
    {"id": 10, "name": "Strip Amlodipine"},
    {"id": 11, "name": "Valsartan"},
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {

    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  // ignore: unused_element
  void _runFilter(String enteredKeyword) {
    // ignore: unused_local_variable
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    setState(() {
      _foundUsers = results;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Daftar Obat'),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        
        itemCount: drugsList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              drugsList[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Course(
                    img: drugsList[index],
                    category: 'obat',
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
