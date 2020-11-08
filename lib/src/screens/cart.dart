import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roadrunners/src/constants/constants.dart';
import 'package:roadrunners/src/data/category_data.dart';
import 'package:roadrunners/src/popups/proceed_popup.dart';
import 'package:roadrunners/src/screens/sign_in.dart';
import 'package:roadrunners/src/subscreens/check_out.dart';
import 'package:roadrunners/src/widgets/cart_card.dart';
import 'package:roadrunners/src/widgets/cart_card_2.dart';
class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override

  Widget build(BuildContext context) {
    final _user= Provider.of<User>(context);

  double height = MediaQuery.of(context).size.height/6;
    return Scaffold(
      backgroundColor: Colors.deepOrange,
     body: ListView(

        children:[
          Container(
            height:height*5.2,
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


       }
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
               /* if(proceeder==false){
                proceed_popup(context);}
                 else if (proceeder==true && _user==null){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> SignInScreen()));
                }
                else if(proceeder==true && _user!= null){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> CheckOut()));
                }*/
               proceed_popup(context);

              },
              child:Text('Proceed to Checkout', style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),),

            ),
          ),
        ],
      )
    );
  }
}
