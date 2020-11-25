import 'package:flutter/material.dart';
import 'package:roadrunners/src/data/category_data.dart';
import 'package:roadrunners/src/widgets/category_foods.dart';
class FoodCategoryScreen extends StatefulWidget {
  @override
  _FoodCategoryScreenState createState() => _FoodCategoryScreenState();
}

class _FoodCategoryScreenState extends State<FoodCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepOrange,),
        backgroundColor: Colors.white,
        title: Column( children:[ SizedBox(height: MediaQuery.of(context).size.height/40,),Text(Name_Of_Food_Category_Screen, style: TextStyle(color: Colors.deepOrange, fontSize: 25, fontWeight: FontWeight.bold),)]),
        centerTitle: true,
        elevation: 0,
      ),
     body: CategoryFoods(),
    ));
  }
}
