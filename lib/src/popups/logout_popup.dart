import 'package:flutter/material.dart';

void logout_popup( BuildContext context)
{
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
                  onPressed: (){

                  },
                ),
              ],
            )
          ],

        );
      }

  );
}