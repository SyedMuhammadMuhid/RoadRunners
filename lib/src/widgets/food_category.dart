import 'package:flutter/material.dart';
import 'package:roadrunners/src/data/category_data.dart';
import 'package:roadrunners/src/models/Category_model.dart';
import 'package:roadrunners/src/widgets/food_card.dart';
//import 'package:provider/provider.dart';

class FoodCategory extends StatelessWidget {

  final List<CategoryModel> _categories= categories;
  @override
  Widget build(BuildContext context) {


    return Container(
    height: 80,
        child:
      ListView.builder(

      itemCount: _categories.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index){
        return FoodCard(
          categoryName: _categories[index].categoryName,
          categoryImagePath: _categories[index].categoryImagePath,
          numberOfItems: _categories[index].numberOfItems,
        );
      },
    ));
  }
}
