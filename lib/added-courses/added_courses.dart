import 'package:flutter/material.dart';
import '../drawer/drawer.dart';
import '../BasicUI/basic_ui.dart';

class AddedCourses extends StatefulWidget {
  AddedCourses({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AddedCourseState createState() => _AddedCourseState();
}

class _AddedCourseState extends State<AddedCourses> {
  // TODO : Courses added by user
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
   List<String> itemList = [
      "Python for Everybody Specialization",
      "Programming for Everybody (Getting Started with Python)",
      "Python Data Structures"];

  @override
  Widget build(BuildContext context) {
    
    // Appbar of added courses page
    final topBar = SecondaryAppBar('Courses added by you', _scaffoldKey);

    final addedCourses = CourseCards(context, itemList);

    return Scaffold(
        key: _scaffoldKey,
        appBar: topBar,
        drawer: AppDrawer(),
        body: addedCourses,
        );
  }
}
