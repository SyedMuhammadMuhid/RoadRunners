import 'package:flutter/material.dart';

void proceed_popup( BuildContext context)
{
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

                  },
                ),
              ],
            )
          ],

        );
      }

  );
}