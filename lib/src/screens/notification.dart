import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadrunners/src/data/category_data.dart';
import 'package:roadrunners/src/widgets/notification_card.dart';


class BottomSheetPage extends StatefulWidget {
  @override
  _BottomSheetPageState createState() => _BottomSheetPageState();

}

class _BottomSheetPageState extends State<BottomSheetPage> {
  @override
  Widget build(BuildContext context) {
    ScrollController controller = new ScrollController();

    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body:  Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
        child:
        ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: ListView.builder(
            controller: controller,
            reverse: true,
            itemCount: notifications_data.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index,){
              //if(index>0){controller.animateTo(controller.position.maxScrollExtent);}
              return NotiCard(notification: notifications_data[index]);

            },
          ),
        ))
    );


  }
}
