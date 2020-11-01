import 'package:flutter/material.dart';

class PersonalData extends StatefulWidget {
  @override
  _PersonalDataState createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  @override
  Widget build(BuildContext context) {

    //-------------------------------------------------------
    void _showEdit()
    {
      showModalBottomSheet(context: context, builder: (context){
        return Container(
          color: Colors.amber[300],
          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
          child: Text('Me edito'),
        );
      });
    }
    //-------------------------------------------------------





    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children:[ Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[ Text('Personal Data',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold, fontSize: 22)),
              ],),
              Text('Name',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 20,),
              Row(            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(height: 30, width: 300,child: Text('Syed Muhammad Muhid')),
                  GestureDetector(onTap: (){
                    _showEdit();
                  },child: Icon(Icons.edit, color: Colors.deepOrange,))
                ],
              ),
              SizedBox(height: 18,),
              Text('Username',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 20,),
              Row(            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(height: 30, width: 300,child: Text('Food Expert')),
                  GestureDetector(onTap: (){
                    _showEdit();
                  },child: Icon(Icons.edit, color: Colors.deepOrange,))
                ],
              ),
              SizedBox(height: 18,),
              Text('Email',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 20,),
              Row(            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(height: 30, width: 300,child: Text('syedmuhammad.muhid1@gmail.com')),
                  GestureDetector(onTap: (){
                    _showEdit();
                  },child: Icon(Icons.edit, color: Colors.deepOrange,))
                ],
              ),
              SizedBox(height: 18,),
              Text('Contact Info',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 20,),
              Row(            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 30, width: 300,child: Text('+92-323-5599350')),
                  GestureDetector(onTap: (){
                    _showEdit();
                  },child: Icon(Icons.edit, color: Colors.deepOrange,))
                ],
              ),
              SizedBox(height: 20,),
              Text('Address',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 30, width: 350,child: Text('House no 2093-H, Street E-2, Block-A, Sector O-9, NPF, Islamabad')),
                  GestureDetector(onTap: (){
                    _showEdit();
                  },child: Icon(Icons.edit, color: Colors.deepOrange,))
                ],
              ),
              SizedBox(height: 18,),
              Text('Account Details',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold, fontSize: 18)),
              Row(mainAxisAlignment: MainAxisAlignment.end,children: [
                GestureDetector(onTap: (){
                  _showEdit();
                },
                    child: Icon(Icons.edit, color: Colors.deepOrange,))],),
              SizedBox(height: 10,),
              Container(
                  height:185,
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

                      Text("4214 3312 9700 5647", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700, letterSpacing: 2.0),),

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


            ],
          ),
        ),
  ],
      ),

    );
  }
}
