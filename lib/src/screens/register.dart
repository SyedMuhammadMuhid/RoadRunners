import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:roadrunners/src/constants/constants.dart';
import 'package:roadrunners/src/screens/sign_in.dart';
import 'package:roadrunners/src/subscreens/personal_data.dart';
import 'package:roadrunners/src/subscreens/personal_data_for_signup.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _key = GlobalKey<FormState>();
  String Email;
  String Pass;
  String Con_Pass;
  String Name;
  String UserName;
  bool obscureText1 = true;
  bool obscureText2 = true;

  @override
  Widget build(BuildContext context) {
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
                                  Pass = val;
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
                                  Pass = val;
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
                              onPressed: () {
                                if (_key.currentState.validate()) {
                                  setState(() {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                PersonalData_On_Signup()));
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
