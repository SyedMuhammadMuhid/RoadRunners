import 'package:flutter/material.dart';
import 'package:roadrunners/src/data/category_data.dart';
import 'package:roadrunners/src/loading/loading.dart';
class GotoSignin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 300,width: 300,child: CircleAvatar(backgroundColor:Colors.white,child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset('assets/applogo4.png', ),
            ),)),
            SizedBox(height: 20,),
            FlatButton(child: Text('Lets Sign In', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> LoadingScreen()));

            },)
          ],
        ),
      ),
    );
  }
}
