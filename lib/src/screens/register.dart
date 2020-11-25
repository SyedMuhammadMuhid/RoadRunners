import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:roadrunners/src/constants/constants.dart';
import 'package:roadrunners/src/screens/sign_in.dart';
import 'package:roadrunners/src/services/authentication.dart';
import 'package:roadrunners/src/subscreens/personal_data.dart';
import 'package:roadrunners/src/subscreens/personal_data_for_signup.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _key = GlobalKey<FormState>();
  final Authentication _auth = Authentication();

  String Email;
  String Pass;
  String Con_Pass;
  String Name;
  String UserName;
  bool obscureText1 = true;
  bool obscureText2 = true;
  //-----------------
  FToast fToast;

  //-----------------------
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    final _user=Provider.of<User>(context);

    //---------------------------------toast function
    void float_toast(String message) async {

      Widget toast = Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.redAccent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      );

      fToast.showToast(
        child: toast,
        gravity: ToastGravity.BOTTOM,
        toastDuration: Duration(seconds: 2),
        /* positionedToastBuilder: (context, child) {
            return Positioned(
              child: child,
              top: MediaQuery.of(context).size.height-10,

            );
          }*/);
    }

    //________________________________


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: SafeArea(
            child: Text(
          'Register',
          style: TextStyle(color: Colors.deepOrange, fontSize: 25),
        )),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Scrollbar(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Form(
                      key: _key,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                              validator: (val) =>
                                  val.isEmpty ? 'Enter Email' : null,
                              onChanged: (val) {
                                setState(() {
                                  Email = val;
                                });
                              },
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 25,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Email',
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder:
                                    input_text_decoration_variable_for_focus,
                                focusedBorder:
                                    input_text_decoration_variable_for_focus,
                                labelStyle: TextStyle(
                                    fontSize: 25, color: Colors.deepOrange),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              validator: (val) =>
                                  val.length < 6 ? 'Password Length' : null,
                              obscureText: obscureText1,
                              onChanged: (val) {
                                setState(() {
                                  Pass = val;
                                });
                              },
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 25,
                              ),
                              decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obscureText1 = !obscureText1;
                                    });
                                  },
                                  child: Icon(obscureText1 == true
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                ),
                                labelText: 'Password',
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder:
                                    input_text_decoration_variable_for_focus,
                                focusedBorder:
                                    input_text_decoration_variable_for_focus,
                                labelStyle: TextStyle(
                                    fontSize: 25, color: Colors.deepOrange),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              validator: (val) =>
                                  val.length < 6 && Pass == Con_Pass
                                      ? 'Password Dont Match'
                                      : null,
                              obscureText: obscureText2,
                              onChanged: (val) {
                                setState(() {
                                  Con_Pass = val;
                                });
                              },
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 25,
                              ),
                              decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obscureText2 = !obscureText2;
                                    });
                                  },
                                  child: Icon(obscureText2 == true
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                ),
                                labelText: 'Confirm Password',
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder:
                                    input_text_decoration_variable_for_focus,
                                focusedBorder:
                                    input_text_decoration_variable_for_focus,
                                labelStyle: TextStyle(
                                    fontSize: 25, color: Colors.deepOrange),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              validator: (val) =>
                                  val.length < 6 ? 'Name Length' : null,
                              obscureText: false,
                              onChanged: (val) {
                                setState(() {
                                  Name = val;
                                });
                              },
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 25,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Name',
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder:
                                    input_text_decoration_variable_for_focus,
                                focusedBorder:
                                    input_text_decoration_variable_for_focus,
                                labelStyle: TextStyle(
                                    fontSize: 25, color: Colors.deepOrange),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              validator: (val) =>
                                  val.length < 6 ? 'Username Length' : null,
                              obscureText: false,
                              onChanged: (val) {
                                setState(() {
                                  UserName = val;
                                });
                              },
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 25,
                              ),
                              decoration: InputDecoration(
                                labelText: 'UserName',
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder:
                                    input_text_decoration_variable_for_focus,
                                focusedBorder:
                                    input_text_decoration_variable_for_focus,
                                labelStyle: TextStyle(
                                    fontSize: 25, color: Colors.deepOrange),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          FlatButton(
                              color: Colors.deepOrange,
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              onPressed: (){
                                if (_key.currentState.validate()) {
                                  setState(() async {
                                    if(Pass==Con_Pass){
                                   await _auth.SignUp(Email, Pass, Name, UserName);

                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder: (BuildContext context) =>
                                                    PersonalData_On_Signup()));
                                      }

                                    else if(Pass != Con_Pass){
                                      float_toast("Passwords Don't Match");
                                    }
                                  });
                                }
                              }),
                          SizedBox(
                            height: 15,
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                              children: <TextSpan>[
                                TextSpan(text: 'Already a User?  '),
                                TextSpan(
                                    text: 'SignIn',
                                    style: TextStyle(
                                      color: Colors.lightBlue,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        print('i was clicked');

                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        SignInScreen()));
                                      }),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
