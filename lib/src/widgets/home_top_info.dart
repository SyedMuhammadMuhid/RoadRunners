import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child:
    Column( crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('What Would',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                Text('You Like To Eat !',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
              ],),
            Image(
              image: AssetImage('assets/applogo2.PNG'),
              height: 80,
              width: 160,
            ),
          ],),
        Icon(Icons.notifications, color: Theme.of(context).primaryColor ,size: 40,),
      ],
    ));
  }
}