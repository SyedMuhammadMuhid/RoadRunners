import 'package:flutter/material.dart';
import 'package:roadrunners/src/home.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fastest Food Delivery Application 💨",
      theme: ThemeData(
        primaryColor: Colors.deepOrange,),

      home: Home(),
    );
  }
}
