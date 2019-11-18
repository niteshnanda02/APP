import 'package:flutter/material.dart';
import '../BasicUI/basic_ui.dart';
import 'package:courser/API/structures.dart';



class CourseDesc extends StatelessWidget {

  Course currCourse;

  CourseDesc(Course c1){
    this.currCourse = c1;
  }

  // TODO : Remove this
  var para =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';

  @override
  Widget build(BuildContext context) {
    // App bar of Course page
    final courseDescBar = AppBar(
        title: Text(
          "Course Details",
          style: TextStyle(color: Colors.deepPurple),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.deepPurple,
          ),
          onPressed: () {Navigator.pop(context);},
        ));

    // Heading of Course
    final courseHeading = titleGen(
        currCourse.cname,
        32.0,
        FontWeight.bold,
        Colors.black);

    // TODO: Return a picture according to type of course
    final courseImage = 0;

    // Pre Requisites
    final preReqText =
        titleGen("Pre Requisites", 18.0, FontWeight.bold, Colors.black);

    final preReqValue = valueGen("Python3, HTML, CSS, JS, Flask Framework");

    // Type of Course
    final typeText = titleGen("Type", 18.0, FontWeight.bold, Colors.black);

    final typeTextValue = valueGen("Machine Learning");

    final courseType = Row(
      children: <Widget>[
        typeText,
        SizedBox(
          width: 145.0,
        ),
        typeTextValue
      ],
    );

    // Price of course
    final priceText = titleGen("Price", 18.0, FontWeight.bold, Colors.black);

    final priceTextValue = valueGen("Free");

    final coursePrice = Row(
      children: <Widget>[
        priceText,
        SizedBox(
          width: 145.0,
        ),
        priceTextValue
      ],
    );

    final linkButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.deepPurple,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("LINK",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 21.0, color: Colors.white)),
      ),
    );

    final likeButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.white,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {},
          child: Icon(
            Icons.thumb_up,
            color: Colors.deepPurple,
          )),
    );

    final linkAndUpvote = Row(
      children: <Widget>[
        likeButton,
        SizedBox(
          width: 20.0,
        ),
        titleGen("40K", 18.0, FontWeight.bold, Colors.black),
        SizedBox(
          width: 100.0,
        ),
        linkButton
      ],
    );

    // Reviews
    final reviewText = titleGen("Reviews", 18.0, FontWeight.bold, Colors.black);

    final reviewBox = TextField(
        decoration: InputDecoration(hintText: "Add your comment here....."));

    final reviewSubButton = ButtonGen(context, "SUBMIT REVIEW", Colors.white, Colors.black);

    final reviewContainer = new SizedBox(
        height: 100.0,
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Card(
                    elevation: 5.0,
                    child: Column(
                      children: <Widget>[
                        titleGen("Username", 12.0, FontWeight.bold,
                            Colors.deepPurple),
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ")
                      ],
                    ),
                  ));
            }));

    final spacerCourseDesc = SizedBox(
      height: 20.0,
    );

    return Scaffold(
        appBar: courseDescBar,
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              courseHeading,
              spacerCourseDesc,
              titleGen("Description", 18.0, FontWeight.bold, Colors.black),
              valueGen(para),
              spacerCourseDesc,
              preReqText,
              preReqValue,
              spacerCourseDesc,
              courseType,
              spacerCourseDesc,
              coursePrice,
              spacerCourseDesc,
              linkAndUpvote,
              spacerCourseDesc,
              reviewText,
              reviewBox,
              spacerCourseDesc,
              reviewSubButton,
              spacerCourseDesc,
              titleGen("Reviews", 18.0, FontWeight.bold, Colors.black),
              reviewContainer
            ],
          ),
        )));
  }
}
