import 'package:courser/home/home_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:courser/BasicUI/basic_ui.dart';

import 'package:firebase_auth/firebase_auth.dart';
class SignUpPage extends StatefulWidget {
  SignUpPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SignUpPageState createState() => _SignUpPageState();
}
final FirebaseAuth mAuth = FirebaseAuth.instance;



class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    final EField = TextFormField(
              controller: emailController,
                validator: (input) {
                        if (input.isEmpty) {
                          return "Please type an email";
                        }
                      },
                       decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      )

            );
    final PField = TextFormField(
              controller: passwordController,
                validator: (input) {
                        if (input.isEmpty) {
                          return "Please type a password";
                        }
                      },
                       decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      )

            );
            
    final LButton = Material(
      elevation: 6.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.purple,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
        signup();

        },
        child: Text("SIGN UP",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 21.0, color: Colors.white)),
      ),
    );

    final SignUp = GestureDetector(
      child: Align(
        alignment: Alignment.center,
        child: Container(
            child: Text(
          "ALREADY HAVE AN ACCOUNT? SIGN IN",
          style: TextStyle(
              fontSize: 12.0, color: Colors.grey, fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        )),
      ),
      onTap: () {
      },
    );

    final PassWordText = titleGen("Password", 12.0, FontWeight.bold, Colors.grey);

    final SignIn = Align(
      alignment: Alignment.center,
      child: Container(
        child: Text(
          "Sign in to continue",
          style: TextStyle(
              color: Colors.grey,
              fontFamily: "Raleway",
              fontSize: 14.0,
              fontWeight: FontWeight.w400),
        ),
      ),
    );

    final UNameText = titleGen("Username", 12.0, FontWeight.bold, Colors.grey);

    final EmailText = Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          "Email",
          style: TextStyle(
              color: Colors.grey,
              fontFamily: "Roboto",
              fontSize: 12.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );

    final Welcome = Align(
      alignment: Alignment.center,
      child: Container(
        child: Text(
          "Welcome to Courser",
          style: TextStyle(
              color: Colors.purple, fontFamily: "Roboto", fontSize: 22.0),
        ),
      ),
    );

    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 35.0,
                ),
                Welcome,
                SizedBox(
                  height: 5.0,
                ),
                SignIn,
                SizedBox(
                  height: 220.0,
                ),
                EmailText,
                EField,
                SizedBox(height: 10.0),
                SizedBox(height: 10.0),
                PassWordText,
                PField,
                SizedBox(
                  height: 10.0,
                ),
                LButton,
                SizedBox(
                  height: 10.0,
                  
                ),
                SignUp,
                
              ],
            ),
          ),
        ),
      ),
    ));
  }
  
void signup() async{
  
    FirebaseUser user;
    try {
      user = await mAuth.createUserWithEmailAndPassword(
 
          email: emailController.text, password: passwordController.text);
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> MyHomePage()));
 
    }catch(e){
      print(e.toString());
    }
  }
}
