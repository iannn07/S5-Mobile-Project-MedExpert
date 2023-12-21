import 'package:flutter/material.dart';
import 'package:med_expert/views/main/homepage/pire/description_section.dart';

class Course extends StatefulWidget {
  final String img;

  Course(this.img);

  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: DescriptionSection(courseTitle: widget.img),
    );
  }
}
