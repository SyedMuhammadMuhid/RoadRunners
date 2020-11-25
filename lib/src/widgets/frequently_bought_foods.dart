import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:roadrunners/src/data/category_data.dart';
import 'package:roadrunners/src/models/Category_model.dart';
import 'package:roadrunners/src/models/Frequent_food_model.dart';
import 'package:roadrunners/src/widgets/food_card.dart';
import 'package:roadrunners/src/widgets/frequent_food_card.dart';

class FrequentlyBoughtFoods extends StatefulWidget {
  @override
  _FrequentlyBoughtFoodsState createState() => _FrequentlyBoughtFoodsState();
}

class _FrequentlyBoughtFoodsState extends State<FrequentlyBoughtFoods> {
  final List<FrequentFoodModel> _frequent_foods= frequently_bought_food_data;
 // final List<CategoryModel> _categories= categories;
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height/10;
    print(_frequent_foods.length);
    return Container(

      //height: MediaQuery.of(context).size.height/1.9,
      height:height*5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: ListView.builder(
          
          physics: BouncingScrollPhysics(),
          itemCount:_frequent_foods.length,
         // itemCount: _categories.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index){
            return FrequentFoodCard(
                foodName:  _frequent_foods[index].foodName,
                categoryImagePath: _frequent_foods[index].categoryImagePath,
                money: _frequent_foods[index].money,
                moneyLevel: _frequent_foods[index].moneyLevel,
                location: _frequent_foods[index].location,
                rating: _frequent_foods[index].rating
            );

          },
        ),
      ),
    );

  }
}
