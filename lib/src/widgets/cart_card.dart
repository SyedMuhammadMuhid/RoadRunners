import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class CartCard extends StatefulWidget {
  String foodName;
  String foodImagePath;
  int numberOfItems;
  String location;
  double price;

  CartCard({this.foodName, this.foodImagePath, this.numberOfItems,this.location, this.price});
  @override
  _CartCardState createState() => _CartCardState(foodName: foodName, foodImagePath: foodImagePath, price: price, location: location, numberOfItems: numberOfItems);

}

class _CartCardState extends State<CartCard> {
  String foodName;
  String foodImagePath;
  int numberOfItems;
  String location;
  double price;

  _CartCardState({this.foodName, this.foodImagePath, this.numberOfItems,this.location, this.price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          IconButton( icon: Icon(Icons.add_circle_outline),color: Colors.deepOrange, onPressed: (){ setState((){ numberOfItems++;});},),
                          Text(numberOfItems.toString()),
                          IconButton( icon: Icon(Icons.remove_circle_outline),color: Colors.deepOrange, onPressed: (){setState((){ if(numberOfItems>1){numberOfItems--;}});},),
                        ],
                      ),
                    ),
                    Material(
                      elevation: 5,
                      child: Container(
                          height: 50,
                          width: 70,
                          child: Center(child: Text((price*numberOfItems).toString() + ' \$', style: TextStyle(fontSize: 18),))),
                    ),

                  ]),
              Column(
                children: <Widget>[

                  Text(foodName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Row(children: <Widget>[ Icon(Icons.location_on, color: Colors.red,), Text(location)],)
                ],
              ),

              Container(
                height: 80,
                width: 80,
                child: CircleAvatar(
                  backgroundImage: AssetImage(foodImagePath),
                  radius: 50,
                ),
              ),


            ],
          ),

          Container(
            height: 1,
            width: double.maxFinite,
            color: Colors.grey,),

          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:<Widget> [
              IconButton(
                icon: Icon(Icons.delete, color: Colors.red,),
                onPressed: (){},
              ),


            ],
          )
        ],
      ),


    );
  }
}





