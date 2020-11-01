import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/hp/AndroidStudioProjects/roadrunners/lib/src/widgets/home.dart';
import 'package:roadrunners/src/widgets/nav_bar.dart';
import 'package:splashscreen/splashscreen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fastest Food Delivery Application 💨",
      theme: ThemeData(
        primaryColor: Colors.deepOrange,),

      home:Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(top: 120),

          child: SplashScreen(
              seconds: 3,
            backgroundColor: Colors.white,
            image: Image.asset('assets/applogo4.png', ),
              loaderColor: Colors.white,
            photoSize: MediaQuery.of(context).size.height/5,
            navigateAfterSeconds: NavBar(),
              ),
        ),
      ),
    );
  }
}
