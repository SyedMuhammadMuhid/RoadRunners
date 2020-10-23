import 'package:flutter/material.dart';
import 'file:///C:/Users/hp/AndroidStudioProjects/roadrunners/lib/src/widgets/home.dart';
import 'package:roadrunners/src/widgets/nav_bar.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fastest Food Delivery Application 💨",
      theme: ThemeData(
        primaryColor: Colors.deepOrange,),

      home: NavBar(),
    );
  }
}
