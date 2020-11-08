import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:roadrunners/src/data/category_data.dart';
import 'package:roadrunners/src/screens/sign_in.dart';
import 'package:roadrunners/src/subscreens/check_out.dart';
import 'package:roadrunners/src/widgets/nav_bar.dart';
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    final _user= Provider.of<User>(context);

    Future.delayed(const Duration(seconds: 2), () {
      if (_user==null){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> SignInScreen()));
      }
      else if(proceeder==true && _user!= null){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> CheckOut()));
      }
      else if(proceeder==false && _user!=null){
        index_changer=2;
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> NavBar()));

      }
    });
    return Scaffold(
      body: Center(child: SpinKitWave(color: Colors.deepOrange, size: 50,)),
    );
  }
}
