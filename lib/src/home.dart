import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadrunners/main.dart';
import 'package:roadrunners/src/widgets/food_category.dart';
import 'package:roadrunners/src/widgets/home_top_info.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.fromLTRB(10,25,0,0),
        children: <Widget>[
                 HomeTopInfo(),
          FoodCategory()
    ]),);
  }
}
