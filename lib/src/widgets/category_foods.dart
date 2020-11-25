import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:roadrunners/src/data/category_data.dart';
import 'package:roadrunners/src/models/Category_food_model.dart';
import 'package:roadrunners/src/models/Category_model.dart';
import 'package:roadrunners/src/models/Frequent_food_model.dart';
import 'package:roadrunners/src/widgets/food_card.dart';
import 'package:roadrunners/src/widgets/frequent_food_card.dart';

class CategoryFoods extends StatefulWidget {
  @override
  _CategoryFoodsState createState() => _CategoryFoodsState();
}

class _CategoryFoodsState extends State<CategoryFoods> {
  final List<CategoryFoodModel> _Category_foods=Data_list[Food_Category_index];

  // final List<CategoryModel> _categories= categories;
  @override
  Widget build(BuildContext context) {


    double height= MediaQuery.of(context).size.height/10;
    print(_Category_foods.length);
    return Container(
      //height: MediaQuery.of(context).size.height/1.9,
      height:height*10,
      child: ListView.builder(

          physics: BouncingScrollPhysics(),
          itemCount:_Category_foods.length,
          // itemCount: _categories.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index){
            return FrequentFoodCard(
                foodName:  _Category_foods[index].foodName,
                categoryImagePath: _Category_foods[index].categoryImagePath,
                money: _Category_foods[index].money,
                moneyLevel: _Category_foods[index].moneyLevel,
                location: _Category_foods[index].location,
                rating: _Category_foods[index].rating
            );

          },
        ),

    );

  }
}
