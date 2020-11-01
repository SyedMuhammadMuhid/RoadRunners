import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:roadrunners/src/constants/constants.dart';
import 'package:roadrunners/src/screens/cart.dart';
class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final _key= GlobalKey<FormState>();
  String Email;
  String Pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.white,elevation: 0, title:SafeArea(child: Text('Sign In', style: TextStyle(color: Colors.deepOrange, fontSize: 25),)),centerTitle: true,),
backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Stack(
          children:<Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(top:400,),
                  child: Image(image:AssetImage('assets/food_img_signin.png'), height: 270,)),
            ),

            Column(
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
                        obscureText: true,
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
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> CartScreen()));
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
                            // Navigator.pushNamed(context, '/signup');
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

  ]),
      ),
    );
  }
}
/**/