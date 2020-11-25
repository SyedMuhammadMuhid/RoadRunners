import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadrunners/main.dart';
import 'package:roadrunners/src/widgets/food_category.dart';
import 'package:roadrunners/src/widgets/frequently_bought_foods.dart';
import 'package:roadrunners/src/widgets/home_top_info.dart';
import 'package:roadrunners/src/widgets/search_field.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 10;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
            padding: EdgeInsets.fromLTRB(10, 25, 0, 0),
            children: <Widget>[
              HomeTopInfo(),
              Container(height: height, child: FoodCategory()),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Frequently Bought Food Items',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                        child: Text(
                          'View all',
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 18,
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
             FrequentlyBoughtFoods(),
            ]),
      ),
    );
  }
}
