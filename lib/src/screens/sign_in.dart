import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:roadrunners/src/constants/constants.dart';
import 'package:roadrunners/src/data/category_data.dart';
import 'package:roadrunners/src/loading/loading.dart';
import 'package:roadrunners/src/screens/cart.dart';
import 'package:roadrunners/src/screens/register.dart';
import 'package:roadrunners/src/services/authentication.dart';
import 'package:roadrunners/src/subscreens/check_out.dart';
import 'package:roadrunners/src/widgets/nav_bar.dart';


class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final _key= GlobalKey<FormState>();
  String Email;
  String Pass;
  bool obscureText= true;
  final Authentication _auth= Authentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.white,elevation: 0, title:SafeArea(child: Text('Sign In', style: TextStyle(color: Colors.deepOrange, fontSize: 25),)),centerTitle: true,),
backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(onTap: (){

                      },child: Text('Forgotten Password?',style: TextStyle(color: Colors.blue),)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Form(
                   key: _key,
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        TextFormField(
                            validator: (val)=> val.isEmpty ? 'Enter Email': null,
                            onChanged: (val){
                              setState(() {
                                Email=val;
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
                              enabledBorder: input_text_decoration_variable_for_focus,
                              focusedBorder:input_text_decoration_variable_for_focus,

                              labelStyle: TextStyle(
                                  fontSize: 25,
                                  color: Colors.deepOrange
                              ),)
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                            validator: (val)=> val.length <6 ? 'Password Length': null,
                            obscureText: obscureText,
                            onChanged: (val){
                              setState(() {
                                Pass=val;
                              });
                            },
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 25,

                            ),
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector( onTap: (){
                                setState(() {
                                  obscureText=!obscureText;
                                });
                              },
                                  child: Icon(obscureText==true?Icons.visibility_off:Icons.visibility)),
                              labelText: 'Password',
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: input_text_decoration_variable_for_focus,
                              focusedBorder: input_text_decoration_variable_for_focus,
                              labelStyle: TextStyle(
                                  fontSize: 25,
                                  color: Colors.deepOrange
                              ),)),
                      ],
                    ),
                  ),
SizedBox(height: 10,),
                  FlatButton(
                    color: Colors.deepOrange,
                    child: Text('Sign In', style: TextStyle(color:Colors.white, fontSize: 18),),
                    onPressed: (){
                       if(_key.currentState.validate()){
                          setState(() async{
                            FocusScope.of(context).unfocus();
                            await _auth.Sign_In();
                           index_changer=0;
                           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> LoadingScreen()));
                                      });}}
                  ),
                  SizedBox(height: 15,),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black87, ),
                      children: <TextSpan>[
                        TextSpan(text: 'Not a User? ,than '),
                        TextSpan(
                            text: 'Register',
                            style: TextStyle(color: Colors.lightBlue, ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                              print('i was clicked');
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> RegisterPage()));

                              }),
                      ],
                    ),
                  ),
                 /* Container(
                    height:80,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                  )*/
                ],
                  ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width,
                  child: Image(image:AssetImage('assets/food_img_signin.png'))),
            ],
          ),
        ),
      ),
    );
  }
}
/**/