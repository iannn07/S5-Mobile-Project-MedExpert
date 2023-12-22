import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:med_expert/views/main/homepage/pire/course.dart';
// import 'package:go_router/go_router.dart';
// ignore: unused_import
// import 'package:med_expert/views/main/homepage/pire/course.dart';

class Dashboard extends StatefulWidget {
<<<<<<< HEAD
  const Dashboard({super.key, required List<String> imgList});
=======
  final List<String> imgList;

  // Perbaiki konstruktor dengan menambahkan `required`
  const Dashboard({Key? key, required this.imgList}) : super(key: key);

>>>>>>> cf0423ed146b3bbc72424579a01d8df999ffaf5b
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> drugsList = [
    'Ambroxol',
    'Amlodipine',
    'Bodrex Batuk Berdahak',
    'Bodrex Flu dan Batuk',
    'Dextamine',
    'Panadol Biru',
    'Paramex',
    'Paratusin',
    'Simvastatin',
    'Strip Amlodipine',
    'Valsartan',
  ];

  List<String> diseaseList = [
    'Diabetes Tipe 1',
    'Diabetes Tipe 2',
    'Transplantasi Jantung',
    'Batu Ginjal',
  ];

  // final List<Map<String, dynamic>> _allUsers = [
  //   {"id": 1, "name": "Heart"},
  //   {"id": 2, "name": "Pathology"},
  //   {"id": 3, "name": "Surgery"},
  //   {"id": 4, "name": "Drugs"},
  //   {"id": 5, "name": "Radiology"},
  //   {"id": 6, "name": "Anatomy"},
  // ];

  // // This list holds the data for the list view
  // // ignore: unused_field
  // List<Map<String, dynamic>> _foundUsers = [];
  // @override
  // initState() {

  //   _foundUsers = _allUsers;
  //   super.initState();
  // }

  // // This function is called whenever the text field changes
  // // ignore: unused_element
  // void _runFilter(String enteredKeyword) {
  //   // ignore: unused_local_variable
  //   List<Map<String, dynamic>> results = [];
  //   if (enteredKeyword.isEmpty) {
  //     // if the search field is empty or only contains white-space, we'll display all users
  //     results = _allUsers;
  //   } else {
  //     results = _allUsers
  //         .where((user) =>
  //         user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
  //         .toList();
  //     // we use the toLowerCase() method to make it case-insensitive
  //   }

  //   setState(() {
  //     _foundUsers = results;
  //   });

  // }
  
  // String _searchTerm = "";
  // List<DataItem> _filteredItems = [];

  // @override
  // void initState() {
  //   super.initState();
  //   _filteredItems = widget.items; // Initially, show all items.
  // }

  // void _onSearchTextChanged(String text) {
  //   setState(() {
  //     _searchTerm = text.toLowerCase();
  //     _filteredItems = widget.items
  //         .where((item) =>
  //             item.title.toLowerCase().contains(_searchTerm) ||
  //             item.description.toLowerCase().contains(_searchTerm) ||
  //             item.tags.any((tag) => tag.toLowerCase().contains(_searchTerm)))
  //         .toList();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(0xFF1564c0),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 110),
                    child: Text(
                      "Hi, " + FirebaseAuth.instance.currentUser!.displayName!,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                  ),
          //         Padding( 
          //           padding: EdgeInsets.only(left: 275),
          //           child: Icon(
          //             Icons.notifications,
          //               size: 28,
          //                 color: Colors.white,
          //   ),
          // ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  // TextField(
                  //   style: TextStyle(color: Colors.black ),
                  //   decoration: InputDecoration(
                  //     filled: true,
                  //     fillColor: Colors.white,
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(8.0),
                  //       borderSide: BorderSide.none,
                  //     ),
                  //     hintText: "Search Here...",
                  //     prefixIcon: Icon(Icons.search),
                  //     prefixIconColor: Colors.black,
                  //   ),
                  // ),
                  Container(
                    // margin: EdgeInsets.only(top: 5, bottom: 10),
                    // width: MediaQuery.of(context).size.width,
                    // height: 50,
                    // alignment: Alignment.center,
                    // decoration: BoxDecoration(
                    //   color: Colors.white,
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    padding: EdgeInsets.only(bottom: 5, left: 60),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Welcome To Our Application, Enjoy It!",
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 15,
                        ),
                        // prefixIcon: Icon(
                        //   Icons.people,
                        //   size: 25,
                        // ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Expanded(
            //   child:_foundUsers.isNotEmpty
            //       ? ListView.builder(
            //     itemCount: _foundUsers.length,
            //     itemBuilder: (context, index) => Card(
            //       key: ValueKey(_foundUsers[index]["id"]),
            //       color: Colors.blue,
            //       elevation: 4,
            //       margin: const EdgeInsets.symmetric(vertical: 10),
            //       child: ListTile(
            //         leading: Text(
            //           _foundUsers[index]["id"].toString(),
            //           style: const TextStyle(fontSize: 24, color:Colors.white),
            //         ),
            //         title: Text(_foundUsers[index]['name'], style:const TextStyle(
            //           color:Colors.white
            //         )),
            //       ),
            //     ),
            //   )
            //       : const Text(
            //     'No results found',
            //     style: TextStyle(fontSize: 24),
            //   ),
            // ),
              Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "What you want to learn today?",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Medicine",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  GridView.builder(
                    itemCount: drugsList.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio:
                          (MediaQuery.of(context).size.height - 30 - 5) /
                              (4 * 240),
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Course(
<<<<<<< HEAD
                                    img: imgList[index],
                                    category: 'disease'),
=======
                                    img: drugsList[index], category: 'drugs'),
>>>>>>> cf0423ed146b3bbc72424579a01d8df999ffaf5b
                              ));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 227, 240, 255),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Image.asset(
                                  "lib/img/${drugsList[index]}.png",
                                  width: 110,
                                  height: 110,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                drugsList[index],
                                style: TextStyle(
                                  fontSize: 12,
<<<<<<< HEAD
=======
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Disease",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  GridView.builder(
                    itemCount: diseaseList.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio:
                          (MediaQuery.of(context).size.height - 30 - 5) /
                              (4 * 240),
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Course(
                                    img: diseaseList[index],
                                    category: 'disease'),
                              ));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 227, 240, 255),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Image.asset(
                                  "lib/img/${diseaseList[index]}.png",
                                  width: 110,
                                  height: 110,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                diseaseList[index],
                                style: TextStyle(
                                  fontSize: 12,
>>>>>>> cf0423ed146b3bbc72424579a01d8df999ffaf5b
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  // SizedBox(height: 20),
                  // GridView.builder(
                  //   itemCount: imgList.length,
                  //   shrinkWrap: true,
                  //   physics: NeverScrollableScrollPhysics(),
                  //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 2,
                  //     childAspectRatio:
                  //         (MediaQuery.of(context).size.height - 30 - 5) /
                  //             (4 * 240),
                  //     mainAxisSpacing: 20,
                  //     crossAxisSpacing: 20,
                  //   ),
                  //   itemBuilder: (context, index) {
                  //     return InkWell(
                  //       // onTap: () {
                  //       //   Navigator.push(
                  //       //       context,
                  //       //       MaterialPageRoute(
                  //       //         builder: (context) => Course(imgList[index]),
                  //       //       ));
                  //       // },
                  //   // child: Container(
                  //   //   margin: EdgeInsets.all(2),
                  //   //   padding: EdgeInsets.all(20),
                  //   //   decoration: BoxDecoration(
                  //   //     color: (
                  //   //       Colors.grey.shade200),
                  //   //   ),
                  //   // ),
                  //       child: Container(
                  //         padding: EdgeInsets.symmetric(
                  //             vertical: 20, horizontal: 10),
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(20),
                  //           color: Color.fromARGB(255, 227, 240, 255),
                  //         ),
                  //         child: Column(
                  //           children: [
                  //             Padding(
                  //               padding: EdgeInsets.all(10),
                  //               child: Image.asset(
                  //                 "lib/img/${imgList[index]}.png",
                  //                 width: 110,
                  //                 height: 110,
                  //               ),
                  //             ),
                  //             SizedBox(height: 10),
                  //             Text(
                  //               imgList[index],
                  //               style: TextStyle(
                  //                 fontSize: 15,
                  //                 fontWeight: FontWeight.w500,
                  //                 color: Colors.black,
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
        }
  }


// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:med_expert/views/main/homepage/pire/course.dart';

// class Dashboard extends StatefulWidget {
//   final List<String> imgList;

//   // Perbaiki konstruktor dengan menambahkan `required`
//   const Dashboard({Key? key, required this.imgList}) : super(key: key);

//   @override
//   State<Dashboard> createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   // List<String> drugsList = [
//   //   'Ambroxol',
//   //   'Amlodipine',
//   //   'Bodrex Batuk Berdahak',
//   //   'Bodrex Flu dan Batuk',
//   //   'Dextamine',
//   //   'Panadol Biru',
//   //   'Paramex',
//   //   'Paratusin',
//   //   'Simvastatin',
//   //   'Strip Amlodipine',
//   //   'Valsartan',
//   // ];

  // List<String> diseaseList = [
  //   'Diabetes Tipe 1',
  //   'Diabetes Tipe 2',
  //   'Transplantasi Jantung',
  //   'Batu Ginjal',
  // ];

//   // String _searchTerm = "";
//   // List<DataItem> _filteredItems = [];

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _filteredItems = widget.items; // Initially, show all items.
//   // }

//   // void _onSearchTextChanged(String text) {
//   //   setState(() {
//   //     _searchTerm = text.toLowerCase();
//   //     _filteredItems = widget.items
//   //         .where((item) =>
//   //             item.title.toLowerCase().contains(_searchTerm) ||
//   //             item.description.toLowerCase().contains(_searchTerm) ||
//   //             item.tags.any((tag) => tag.toLowerCase().contains(_searchTerm)))
//   //         .toList();
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: ListView(
//           children: <Widget>[
//             Container(
//               padding: EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Color(0xFF1564c0),
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(25),
//                   bottomRight: Radius.circular(25),
//                 ),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   SizedBox(height: 30),
//                   Padding(
//                     padding: EdgeInsets.only(left: 3, bottom: 15),
//                     child: Text(
//                       "Hi, " + FirebaseAuth.instance.currentUser!.displayName!,
//                       style: TextStyle(
//                         fontSize: 40,
//                         fontWeight: FontWeight.w500,
//                         letterSpacing: 1,
//                         wordSpacing: 2,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   // Container(
//                   //   margin: EdgeInsets.only(top: 5, bottom: 20),
//                   //   width: MediaQuery.of(context).size.width,
//                   //   height: 55,
//                   //   alignment: Alignment.center,
//                   //   decoration: BoxDecoration(
//                   //     color: Colors.white,
//                   //     borderRadius: BorderRadius.circular(10),
//                   //   ),
//                   //   child: TextFormField(
//                   //     decoration: InputDecoration(
//                   //       border: InputBorder.none,
//                   //       hintText: "Search Here...",
//                   //       hintStyle: TextStyle(
//                   //         color: Colors.black.withOpacity(0.5),
//                   //       ),
//                   //       prefixIcon: Icon(
//                   //         Icons.search,
//                   //         size: 25,
//                   //       ),
//                   //     ),
//                   //   ),
//                   // ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 20, left: 15, right: 15),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "What you want to learn today?",
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Medicine",
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   GridView.builder(
//                     itemCount: drugsList.length,
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       childAspectRatio:
//                           (MediaQuery.of(context).size.height - 30 - 5) /
//                               (4 * 240),
//                       mainAxisSpacing: 10,
//                       crossAxisSpacing: 10,
//                     ),
//                     itemBuilder: (context, index) {
//                       return InkWell(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => Course(
//                                     img: drugsList[index], category: 'drugs'),
//                               ));
//                         },
//                         child: Container(
//                           padding: EdgeInsets.symmetric(
//                               vertical: 20, horizontal: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Color.fromARGB(255, 227, 240, 255),
//                           ),
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.all(10),
//                                 child: Image.asset(
//                                   "lib/img/${drugsList[index]}.png",
//                                   width: 110,
//                                   height: 110,
//                                 ),
//                               ),
//                               SizedBox(height: 10),
//                               Text(
//                                 drugsList[index],
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Disease",
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   GridView.builder(
//                     itemCount: diseaseList.length,
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       childAspectRatio:
//                           (MediaQuery.of(context).size.height - 30 - 5) /
//                               (4 * 240),
//                       mainAxisSpacing: 10,
//                       crossAxisSpacing: 10,
//                     ),
//                     itemBuilder: (context, index) {
//                       return InkWell(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => Course(
//                                     img: diseaseList[index],
//                                     category: 'disease'),
//                               ));
//                         },
//                         child: Container(
//                           padding: EdgeInsets.symmetric(
//                               vertical: 20, horizontal: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Color.fromARGB(255, 227, 240, 255),
//                           ),
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.all(10),
//                                 child: Image.asset(
//                                   "lib/img/${diseaseList[index]}.png",
//                                   width: 110,
//                                   height: 110,
//                                 ),
//                               ),
//                               SizedBox(height: 10),
//                               Text(
//                                 diseaseList[index],
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
