import 'package:flutter/material.dart';
import 'package:roadrunners/src/data/category_data.dart';
class NotiCard extends StatelessWidget {

  String notification='';
  @override
  NotiCard({this.notification});
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
        child: Material(
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Text("  "+ notification, style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),),
               IconButton(
                 icon: Icon(
                   Icons.cancel, color: Colors.red,
                 ),
                 onPressed: (){
                 print('Deleted');
                 },
               ),
          ],)
          ),
        ),
    );
  }
}
