import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  bool val= false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('', style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold, fontSize: 22),),
        ),
        body: Column(
          children: [
            Text(' Choose Payment Method', style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold, fontSize: 22),),
            SizedBox(height: 20,),
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text('Payment by Card',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                ),
                Switch(activeColor: Colors.deepOrange,onChanged: (newval){ setState(() {
              val=!val;
            });}, value: val,)],),
            Container(
              height:200,
                margin: EdgeInsets.symmetric(horizontal: 32),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromRGBO(35, 60, 103, 1),
                  //color: Colors.deepOrange
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Color.fromRGBO(50, 172, 121, 1),
                          child: Icon(Icons.check, color: Colors.white, size: 24,),
                        ),

                        Text("VISA", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 28, color: Colors.white, fontWeight: FontWeight.w900),)
                      ],
                    ),
                    SizedBox(height: 32,),

                    Text("**** **** **** 5647", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700, letterSpacing: 2.0),),

                    SizedBox(height: 32,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("CARD HOLDER", style: TextStyle(fontSize: 12, color: Colors.blue[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                            Text("Moin Jhan", style: TextStyle(fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("EXPIRES", style: TextStyle(fontSize: 12, color: Colors.blue[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                            Text("8/22", style: TextStyle(fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("CVV", style: TextStyle(fontSize: 12, color: Colors.blue[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                            Text("845", style: TextStyle(fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                          ],
                        )
                      ],
                    )

                  ],
                )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16.0, top: 16),
              child: Text('This method uses your bank account details to pay for the ordered items. To change the account and card details, please update your information in the Personal Data section.',style: TextStyle( fontSize: 17)),
            ),
            SizedBox(height: 20,),
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child: Text('Payment on Delivery',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                ),
                Switch(activeColor: Colors.deepOrange,onChanged: (newval){ setState(() {
                  val=!val;
                });}, value: !val,)],),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16),
              child: Text('Payment on Delivery is a Cash on delivery method to pay of the ordered food. Be sure to collect and hold on to your money before the food is delivered to you. ',style: TextStyle( fontSize: 17)),
            )
          ],
        ),

      ),
    );
  }
}
