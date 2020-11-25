import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FrequentFoodCard extends StatelessWidget {

   String foodName;
   String categoryImagePath;
   int money;
   String moneyLevel;
   String location;
   double rating;

  FrequentFoodCard({this.foodName, this.categoryImagePath, this.money, this.moneyLevel, this.location,this.rating});
  @override
  Widget build(BuildContext context) {
    return
      Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(35)),
        ),
        child: Stack(children:<Widget>[
          Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                  image:DecorationImage(
                    image: AssetImage(categoryImagePath),
                    fit: BoxFit.cover,)
              ) ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(35)),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.9),Colors.black87.withOpacity(0.1)
                    ],

                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,

                  )
              ),
            ),
          ),
          Row(
            children: <Widget>[

              Column(

                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0,240,0,0),
                    child: Text(foodName, style: TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                    child: RatingBar(
                      itemSize: 25,
                      initialRating:rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
/*onRatingUpdate: (rating) {
              print(rating);
            }*/
                    ),
                  ),

                ],),

              Padding(
                padding: const EdgeInsets.fromLTRB(45,240,0,0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$money \$ $moneyLevel', style: TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        Expanded(flex: 0,child: Icon( Icons.location_on, color: Colors.red,)),
                        Flexible(flex: 0,child: Text(location, style: TextStyle( color: Colors.white, fontSize: 15, fontStyle: FontStyle.italic))),
                      ],
                    ),
                  ],
                ),
              ),


            ],
          )
        ]),
      ),
    );
  }
}


