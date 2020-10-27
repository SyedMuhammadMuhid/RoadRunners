import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadrunners/src/data/category_data.dart';
import 'package:roadrunners/src/popups/proceed_popup.dart';
import 'package:roadrunners/src/widgets/cart_card.dart';
import 'package:roadrunners/src/widgets/cart_card_2.dart';
class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
     body: ListView(

        children:[
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
       physics: BouncingScrollPhysics(),
       itemCount:cart_data.length,
       scrollDirection: Axis.vertical,
       itemBuilder: (BuildContext context, int index){
         /*return CartCard(foodImagePath: cart_data[index].foodImagePath,
         foodName: cart_data[index].foodName,
         price: cart_data[index].price,
         numberOfItems: cart_data[index].numberOfItems,
         location: cart_data[index].location);*/
         return CartCard2(foodImagePath: cart_data[index].foodImagePath,
             foodName: cart_data[index].foodName,
             price: cart_data[index].price,
             numberOfItems: cart_data[index].numberOfItems,
             location: cart_data[index].location);
       },
     ),
          ),

    ]
    ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 27,),
          Container(
            color: Colors.white,
            height: 40,
            width: 350,
            child: RaisedButton(
              color: Colors.green,
              onPressed: (){
                proceed_popup(context);
              },
              child:Text('Proceed    ____ \$', style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),),

            ),
          ),
        ],
      )
    );
  }
}
