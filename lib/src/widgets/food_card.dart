import 'package:flutter/material.dart';
import 'package:roadrunners/src/data/category_data.dart';
import 'package:roadrunners/src/food_category_screens/food_category_screen.dart';
import 'package:roadrunners/src/models/Category_model.dart';

class FoodCard extends StatelessWidget {
  String categoryName;
  String categoryImagePath;
  int numberOfItems;

  FoodCard({this.categoryName, this.categoryImagePath, this.numberOfItems});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){
      Name_Of_Food_Category_Screen= categoryName;
      if(categoryName=='Burgers'){      Food_Category_index=0;}
      else if(categoryName =='Pizzas'){ Food_Category_index=1;}
      else if(categoryName =='Drinks'){ Food_Category_index=2;}
      else if(categoryName =='Coffee'){ Food_Category_index=3;}
      else if(categoryName =='Breakfasts'){ Food_Category_index=4;}
      else if(categoryName =='Sweets'){ Food_Category_index=5;}

      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> FoodCategoryScreen()));

    },
        child:Container(
      width: 190,
      child: Material(
        elevation: 5,
        child: Card(
          color: Colors.orange[50],
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: <Widget>[
                Image(
                  image: AssetImage(categoryImagePath),
                  height: 65,
                  width: 65,
                ),
                SizedBox(
                  width: 7,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      categoryName,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text('$numberOfItems Kinds'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
