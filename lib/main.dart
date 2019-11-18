import 'package:flutter/material.dart';
import 'package:courser/API/checks.dart';

void main() => runApp(MyApp());

int _userSignedIn = 0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OpenCourser',
      home: UserSignInCheck(_userSignedIn),
      debugShowCheckedModeBanner: false,
    );
  }
}

