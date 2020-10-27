import 'package:flutter/material.dart';

void delete_popup( BuildContext context)
{
  showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Delete', style: TextStyle(color: Colors.red, fontSize: 18),),
          content: Text('By clicking confirm the item for the cart will be removed and all data will be lost', style: TextStyle(color: Colors.black87,fontSize: 14),),
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
                  child: Text('Confirm', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),),
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