import 'package:flutter/material.dart';
import 'package:roadrunners/src/constants/constants.dart';
import 'package:roadrunners/src/data/category_data.dart';
import 'package:roadrunners/src/screens/cart.dart';
import 'package:roadrunners/src/widgets/home.dart';
import 'package:roadrunners/src/widgets/nav_bar.dart';

class PersonalData_On_Signup extends StatefulWidget {
  @override
  _PersonalData_On_SignupState createState() => _PersonalData_On_SignupState();
}

class _PersonalData_On_SignupState extends State<PersonalData_On_Signup> {


  String Name;
  String Username;
  String Email;
  String Contact;
  String Address;
  String _Card_No;
  String _Card_Holder;
  String _EXP_MM;
  String _EXP_YY;
  String _CVV;

  @override
  Widget build(BuildContext context) {
    List <String> Account=[_Card_No, _Card_Holder, _EXP_MM,_EXP_YY,_CVV];


    //-------------------------------------------------------
    void _showEdit(int index)
    {
      showModalBottomSheet(context: context, builder: (context){

        if(index==1){
          return Container(
            color: Colors.amber[300],
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: Column(
              children: [
                Form(
                  child:TextField(
                    //obscureText: true,
                    onChanged: (String name){
                      setState(() {
                        Name=name;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: Name==null?'Name': Name,
                        enabledBorder: input_text_decoration_variable_for_focus,
                        focusedBorder: input_text_decoration_variable_for_focus,
                        fillColor: Colors.white,
                        filled: true

                    ),
                  ),
                ),
                RaisedButton(child: Text('Update', style: TextStyle(color: Colors.white),),color: Colors.deepOrange,onPressed: (){

                  Navigator.pop(context);

                },),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom))
              ],
            ),
          );
        }
        else if(index==2){
          return Container(
            color: Colors.amber[300],
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: Column(
              children: [
                Form(
                  child:TextField(
                    //obscureText: true,
                    onChanged: (String user){
                      setState(() {
                        Username=user;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: Username==null?'Username': Username,
                        enabledBorder: input_text_decoration_variable_for_focus,
                        focusedBorder: input_text_decoration_variable_for_focus,
                        fillColor: Colors.white,
                        filled: true
                    ),
                  ),
                ),
                RaisedButton(child: Text('Update', style: TextStyle(color: Colors.white),),color: Colors.deepOrange,onPressed: (){
                  Navigator.pop(context);
                },),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom))
              ],
            ),
          );
        }
        else if(index==3){
          return Container(
            color: Colors.amber[300],
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: Column(
              children: [
                Form(
                  child:TextField(
                    //obscureText: true,
                    onChanged: (String email){
                      setState(() {
                        Email=email;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: Email==null?'example@gmail.com': Email,
                        enabledBorder: input_text_decoration_variable_for_focus,
                        focusedBorder: input_text_decoration_variable_for_focus,
                        fillColor: Colors.white,
                        filled: true
                    ),
                  ),
                ),
                RaisedButton(child: Text('Update', style: TextStyle(color: Colors.white),),color: Colors.deepOrange,onPressed: (){
                  Navigator.pop(context);
                },),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom))
              ],
            ),
          );
        }
        else if(index==4){
          return Container(
            color: Colors.amber[300],
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: Column(
              children: [
                Form(
                  child:TextField(
                    //obscureText: true,
                    onChanged: (String con){
                      setState(() {
                        Contact=con;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: Contact==null?'+92-___-_______': Contact,
                        enabledBorder: input_text_decoration_variable_for_focus,
                        focusedBorder: input_text_decoration_variable_for_focus,
                        fillColor: Colors.white,
                        filled: true
                    ),
                  ),
                ),
                RaisedButton(child: Text('Update', style: TextStyle(color: Colors.white),),color: Colors.deepOrange,onPressed: (){
                  Navigator.pop(context);
                },),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom))
              ],
            ),
          );
        }
        else if(index==5){
          return Container(
            color: Colors.amber[300],
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: Column(
              children: [
                Form(
                  child:TextField(
                    //obscureText: true,
                    onChanged: (String add){
                      setState(() {
                        Address=add;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: Address==null?'Address': Address,
                        enabledBorder: input_text_decoration_variable_for_focus,
                        focusedBorder: input_text_decoration_variable_for_focus,
                        fillColor: Colors.white,
                        filled: true
                    ),
                  ),
                ),
                RaisedButton(child: Text('Update', style: TextStyle(color: Colors.white),),color: Colors.deepOrange,onPressed: (){
                  Navigator.pop(context);
                },),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom))
              ],
            ),
          );
        }
        else if(index==6){return Container(
          color: Colors.amber[300],
          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
          child: Scrollbar(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Form(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      //obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: Account[0]==null?'Account Number': Account[0],
                          enabledBorder: input_text_decoration_variable_for_focus,
                          focusedBorder: input_text_decoration_variable_for_focus,
                          fillColor: Colors.white,
                          filled: true
                      ),
                    ),
                    SizedBox(height :10),
                    TextField(
                      //obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: Account[1]==null?'Account Holder': Account[1],
                          enabledBorder: input_text_decoration_variable_for_focus,
                          focusedBorder: input_text_decoration_variable_for_focus,
                          fillColor: Colors.white,
                          filled: true
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Expiry Date', style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold, fontSize: 18),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 80,
                          child: TextField(
                            //obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: Account[1]==null?'MM': Account[2],
                                enabledBorder: input_text_decoration_variable_for_focus,
                                focusedBorder: input_text_decoration_variable_for_focus,
                                fillColor: Colors.white,
                                filled: true
                            ),
                          ),
                        ),
                        Text('/', style: TextStyle(color: Colors.deepOrange, fontSize: 18, fontWeight: FontWeight.bold),),
                        Container(
                          width: 80,
                          child: TextField(
                            //obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: Account[1]==null?'YY': Account[3],
                                enabledBorder: input_text_decoration_variable_for_focus,
                                focusedBorder: input_text_decoration_variable_for_focus,
                                fillColor: Colors.white,
                                filled: true
                            ),
                          ),
                        ),
                        Container(
                          width: 80,
                          child: TextField(
                            //obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: Account[1]==null?'CVV': Account[4],
                                enabledBorder: input_text_decoration_variable_for_focus,
                                focusedBorder: input_text_decoration_variable_for_focus,
                                fillColor: Colors.white,
                                filled: true
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom)),
                    Center(
                      child: RaisedButton(child: Text('Update', style: TextStyle(color: Colors.white),),color: Colors.deepOrange,onPressed: (){
                        Navigator.pop(context);
                      },),
                    ),

                  ],
                ),
              ),
            ),
          ),
        );}


      });
    }
    //-------------------------------------------------------

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                  onTap: (){
                   index_changer=0;
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> NavBar()));

                  },
                  child: Icon(Icons.arrow_back, color: Colors.deepOrange,size: 30,)),
            )
          ],),
          Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[ Text('Personal Data',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold, fontSize: 22)),
                ],),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children:<Widget> [
                  Container(
                    height: 140,
                    width: 140,
                    child: Stack(

                      children:[ Container(
                        height: 140,
                        width: 140,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/propic.png'),
                          radius: 50,
                        ),
                      ),
                        CircleAvatar( backgroundColor: Colors.deepOrange,child: Icon(Icons.edit, color: Colors.white,)),
                      ],
                    ),
                  ),
                ],),
              Text('Name',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 20,),
              Row(            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(height: 30, width: 300,child: Text(Name==null?' ':Name)),
                  GestureDetector(onTap: (){
                    _showEdit(1);
                  },child: Icon(Icons.edit, color: Colors.deepOrange,))
                ],
              ),
              SizedBox(height: 18,),
              Text('Username',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 20,),
              Row(            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(height: 30, width: 300,child: Text(Username==null?'':Username)),
                  GestureDetector(onTap: (){
                    _showEdit(2);
                  },child: Icon(Icons.edit, color: Colors.deepOrange,))
                ],
              ),
              SizedBox(height: 18,),
              Text('Email',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 20,),
              Row(            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(height: 30, width: 300,child: Text(Email==null?'____@___.com':Email)),
                  GestureDetector(onTap: (){
                    _showEdit(3);
                  },child: Icon(Icons.edit, color: Colors.deepOrange,))
                ],
              ),
              SizedBox(height: 18,),
              Text('Contact Info',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 20,),
              Row(            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 30, width: 300,child: Text(Contact==null?'+__-___-_____':Contact)),
                  GestureDetector(onTap: (){
                    _showEdit(4);
                  },child: Icon(Icons.edit, color: Colors.deepOrange,))
                ],
              ),
              SizedBox(height: 20,),
              Text('Address',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 30, width: 350,child: Text(Address==null?' ':Address)),
                  GestureDetector(onTap: (){
                    _showEdit(5);
                  },child: Icon(Icons.edit, color: Colors.deepOrange,))
                ],
              ),
              SizedBox(height: 18,),
              Text('Account Details',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold, fontSize: 18)),
              Row(mainAxisAlignment: MainAxisAlignment.end,children: [
                GestureDetector(onTap: (){
                  _showEdit(6);
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

                      Text(Account[0]==null?'**** **** **** ****':Account[0], style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700, letterSpacing: 2.0),),

                      SizedBox(height: 32,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("CARD HOLDER", style: TextStyle(fontSize: 12, color: Colors.blue[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                              Text(Account[1]==null?'':Account[1], style: TextStyle(fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("EXPIRES", style: TextStyle(fontSize: 12, color: Colors.blue[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                              Text(Account[2]==null?"M/YY":Account[2], style: TextStyle(fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("CVV", style: TextStyle(fontSize: 12, color: Colors.blue[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                              Text(Account[3]==null?"***":Account[3], style: TextStyle(fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
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
