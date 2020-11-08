import 'package:flutter/material.dart';
import 'package:roadrunners/src/data/category_data.dart';
import 'package:roadrunners/src/services/authentication.dart';

void logout_popup( BuildContext context)
{
  final Authentication _auth=Authentication();
  showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Logout', style: TextStyle(color: Colors.red, fontSize: 18),),
          content: Text('By clicking Logout you exit this application and the session', style: TextStyle(color: Colors.black87,fontSize: 14),),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  child: Text('Cancle', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                ),
                FlatButton(
                  child: Text('Logout', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),),
                  onPressed: ()async{
                    await _auth.Sign_Out();
                    proceeder=false;
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ],

        );
      }

  );
}