import 'package:flutter/material.dart';
import 'package:roadrunners/src/screens/notification.dart';
import 'package:roadrunners/src/widgets/search_field.dart';


class HomeTopInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height/10;
    return Container(
        height: height*2,
        child:
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
        SizedBox(height: 8,),
        Row(
          children:<Widget> [
            GestureDetector( onTap: (){
              showModalBottomSheet(
                backgroundColor: Colors.deepOrange,
                context: context, builder: (context){
                return Container(
                  child: BottomSheetPage(),
                );
              },
              );
            },
                child: Icon(Icons.notifications, color: Colors.deepOrange ,size: 40,)),
            SizedBox(width: 20,),
           Container( height: 33, width: 330, child: SearchField()),


          ],
        ),
      ],
    ));
  }
}
