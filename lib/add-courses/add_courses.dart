import 'package:flutter/material.dart';
import '../drawer/drawer.dart';
import '../BasicUI/basic_ui.dart';

class AddCourses extends StatefulWidget {
  AddCourses({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AddCourseState createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourses> {
  // TODO : Add all the courses here
  var _courseTypes = ['Web Development', 'Python', 'Java', 'Flutter'];
  var _courseTypeSelected = 'Web Development';

  var _priceTypes = ['Free', 'Paid'];
  var _priceTypeSelected = 'Free';

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // Add courses page ( For any help see : ../BasicUI/basicui.dart)

    // Appbar of add courses page
    final topBar = SecondaryAppBar('Add a new course', _scaffoldKey);

    // Course Name
    final cnameText =
        titleGen("Course Name", 12.0, FontWeight.bold, Colors.grey);

    final cname = TFieldGen("JavaScript for Web Development");

    //Course Platform
    final platformText =
        titleGen("Platform", 12.0, FontWeight.bold, Colors.grey);

    final platform = TFieldGen("Udacity");

    // Prerequisites
    final prereqText = titleGen(
        "Pre Requisites for course", 12.0, FontWeight.bold, Colors.grey);

    final prereq = TFieldGen("Basic knowledge of HTML & CSS");

    // Link
    final linkText =
        titleGen("Link to Course", 12.0, FontWeight.bold, Colors.grey);

    final link = TFieldGen("");

    // Type of Course
    final typeText = titleGen("Type", 12.0, FontWeight.bold, Colors.grey);

    // To change course type on selection from dropdown
    void _onCourseSelected(String newValueSelected) {
      setState(() {
        this._courseTypeSelected = newValueSelected;
      });
    }

    // DropDown list of types of courses
    final type = Align(
        alignment: Alignment.centerLeft,
        child: DropdownButton<String>(
          items: _courseTypes.map((String dropDownStringItem) {
            return DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: Text(dropDownStringItem),
            );
          }).toList(),
          onChanged: (String newValueSelected) {
            _onCourseSelected(newValueSelected);
          },
          value: _courseTypeSelected,
        ));

    // Price of Course
    final freeText = titleGen("Price", 12.0, FontWeight.bold, Colors.grey);

    // To change course type on selection from dropdown
    void _onPriceSelected(String newValueSelected) {
      setState(() {
        this._priceTypeSelected = newValueSelected;
      });
    }

    // DropDown list of Price (Free or Paid)
    final free = Align(
        alignment: Alignment.centerLeft,
        child: DropdownButton<String>(
          items: _priceTypes.map((String dropDownStringItem) {
            return DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: Text(dropDownStringItem),
            );
          }).toList(),
          onChanged: (String newValueSelected) {
            _onPriceSelected(newValueSelected);
          },
          value: _priceTypeSelected,
        ));

    // Description
    final descText =
        titleGen("Description", 12.0, FontWeight.bold, Colors.grey);

    final desc = TFieldGen("");

    // Padding between textfields
    final spacer = SizedBox(height: 10.0);

    // Submit button
    final sButton =
        ButtonGen(context, 'SUBMIT', Colors.white, Colors.deepPurple);

    return Scaffold(
        key: _scaffoldKey,
        appBar: topBar,
        drawer: AppDrawer(),
        body: SingleChildScrollView(
            child: Center(
                child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          cnameText,
                          cname,
                          spacer,
                          platformText,
                          platform,
                          spacer,
                          prereqText,
                          prereq,
                          spacer,
                          linkText,
                          link,
                          spacer,
                          typeText,
                          type,
                          spacer,
                          freeText,
                          free,
                          spacer,
                          descText,
                          desc,
                          spacer,
                          sButton
                        ],
                      ),
                    )))));
  }
}
