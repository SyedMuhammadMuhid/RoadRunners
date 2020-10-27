import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:roadrunners/src/popups/delete_popup.dart';


class CartCard2 extends StatefulWidget {
  String foodName;
  String foodImagePath;
  int numberOfItems;
  String location;
  double price;

  CartCard2({this.foodName, this.foodImagePath, this.numberOfItems,this.location, this.price});
  @override
  _CartCard2State createState() => _CartCard2State( foodName: foodName, foodImagePath: foodImagePath, price: price, location: location, numberOfItems: numberOfItems);
}

class _CartCard2State extends State<CartCard2> {
  String foodName;
  String foodImagePath;
  int numberOfItems;
  String location;
  double price;

  _CartCard2State({this.foodName, this.foodImagePath, this.numberOfItems,this.location, this.price});
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 167,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      IconButton( icon: Icon(Icons.add_circle_outline),color: Colors.deepOrange, onPressed: (){  setState(() {numberOfItems++;});}),
                                      Text(numberOfItems.toString()),
                                      IconButton( icon: Icon(Icons.remove_circle_outline),color: Colors.deepOrange, onPressed: (){ if(numberOfItems>1){ setState(() {numberOfItems--;});}}),
                                    ],
                                  ),
                                ),
                                Material(
                                  elevation: 5,
                                  child: Container(
                                      height: 50,
                                      width: 70,
                                      child: Center(child: Text((price*numberOfItems).toString() + ' \$', style: TextStyle(fontSize: 18),))),
                                ),

                              ]),
                          Column(
                            children: <Widget>[

                              Text(foodName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              Row(children: <Widget>[ Icon(Icons.location_on, color: Colors.red,), Text(location)],)
                            ],
                          ),

                          Container(
                            height: 80,
                            width: 80,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(foodImagePath),
                              radius: 50,
                            ),
                          ),


                        ],
                      ),

                      Container(
                        height: 1,
                        width: double.maxFinite,
                        color: Colors.grey,),

                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:<Widget> [
                          IconButton(
                            icon: Icon(Icons.delete, color: Colors.red,),
                            onPressed: (){
                              delete_popup(context);
                            },
                          ),
                        ],
                      ),
                      Container(
                        height: 1,
                        width: double.maxFinite,
                        color: Colors.grey,),
                    ],
                  ),

                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Details",
                          style: TextStyle(
                              fontSize: 16,color: Colors.deepOrange, fontWeight: FontWeight.bold),
                        )),

                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child:Text('what up ')

                        ),
                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}


