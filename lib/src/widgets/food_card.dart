import 'package:flutter/material.dart';
import 'package:roadrunners/src/models/Category_model.dart';

class FoodCard extends StatelessWidget {
String categoryName;
String categoryImagePath;
int numberOfItems;

  FoodCard({this.categoryName, this.categoryImagePath, this.numberOfItems});
  @override
  Widget build(BuildContext context) {
    return Container(

      width: 190,
      child: Card(
        color: Colors.orange[50],
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: <Widget>[
              Image(image: AssetImage(categoryImagePath),
                height: 65,
                width: 65,),
              SizedBox(width: 7,),
              Column(children: <Widget>[
                Text(categoryName, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                Text('$numberOfItems Kinds'),
              ],)


            ],
          ),
        ),
      ),
    );
  }
}
