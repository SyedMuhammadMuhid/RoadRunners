import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roadrunners/src/loading/loading.dart';
import 'package:roadrunners/src/screens/sign_in.dart';
import 'package:roadrunners/src/subscreens/check_out.dart';
import 'package:roadrunners/src/data/category_data.dart';

void proceed_popup( BuildContext context)
{
  //final user= Provider.of<User>(context);
  showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Proceed', style: TextStyle(color: Colors.green, fontSize: 18),),
          content: Text('By clicking Proceed you will be directed to payment page. Make sure you have made all the right selections', style: TextStyle(color: Colors.black87,fontSize: 14),),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  child: Text('Go Back', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                ),
                FlatButton(
                  child: Text('Proceed', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),),
                  onPressed: (){
                    proceeder=true;

                   // if(user==null){
                  //  Navigator.pop(context);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> LoadingScreen()));
                    //  return SignInScreen();
                   // }
                   // else if(user!= null)
                   //   {
                        //Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> CheckOut()));
                     //   return CheckOut();

                      //}
                  },
                ),
              ],
            )
          ],

        );
      }

  );
}