import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:roadrunners/src/constants/constants.dart';
import 'package:path/path.dart' as Path;
import 'package:roadrunners/src/models/Personal_data_model.dart';
import 'package:roadrunners/src/services/database.dart';
import 'package:provider/provider.dart';


class PersonalData extends StatefulWidget {
  @override
  _PersonalDataState createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {


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
  String ImageLink="   ";

  DataBase_Services database= DataBase_Services();
  @override
  Widget build(BuildContext context) {


    //-------------------------------------------------------
    void _showEdit(int index)
    {
      showModalBottomSheet(
          context: context, builder: (context){

        if(index==1){
          return Container(
            color: Colors.white,
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
                RaisedButton(child: Text('Update', style: TextStyle(color: Colors.white),),color: Colors.deepOrange,onPressed: ()async{
                // await database.updatePersonalData( Personal_Data_Model(ImageLink, Name, Username, Email, Contact, Address, _Card_No,_Card_Holder, _EXP_MM, _EXP_YY, _CVV));
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
            color: Colors.white,
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
            color: Colors.white,
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
            color: Colors.white,
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
            color: Colors.white,
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
        else if(index==6){
          return SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Form(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField( onChanged: (String cardno){
                      setState(() {
                        _Card_No=cardno;
                      });
                    },
                      //obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText:_Card_No==null?'Account Number': _Card_No,
                          enabledBorder: input_text_decoration_variable_for_focus,
                          focusedBorder: input_text_decoration_variable_for_focus,
                          fillColor: Colors.white,
                          filled: true
                      ),
                    ),
                    SizedBox(height :10),
                    TextField(
                      onChanged: (String accountholder){
                        setState(() {
                        _Card_Holder=accountholder;
                        });
                      },
                      //obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: _Card_Holder==null?'Account Holder': _Card_Holder,
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
                            onChanged: (String MM){
                              setState(() {
                                _EXP_MM=MM;
                              });
                            },
                            //obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: _EXP_MM==null?'MM': _EXP_MM,
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
                            onChanged: (String YY){
                              setState(() {
                                _EXP_YY=YY;
                              });
                            },
                            //obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: _EXP_YY==null?'YY': _EXP_YY,
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
                            onChanged: (String cvv){
                              setState(() {
                                _CVV=cvv;
                              });
                            },
                            //obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: _CVV==null?'CVV': _CVV,
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
 /*else if(index==7){
   return Column(children:[
     SizedBox(height: 20,),
     Row(
     children: [
       SizedBox(width: 20,),
       Column(
           children:[CircleAvatar(
         backgroundColor: Colors.white,
         backgroundImage: AssetImage('assets/gallary_img.png'),
         radius: 30,
       ),
           ]),
       SizedBox(width: 20,),
       Column( children: [CircleAvatar(
         backgroundColor: Colors.white,
         backgroundImage: AssetImage('assets/camera_img.png'),
         radius: 30,
       ),
     ])
     ],
   )]);
        }
*/
 else if(index==7)
   {
    return Wrap(
         children: <Widget>[
           Container(
             child: Container(
               decoration: new BoxDecoration(
                   color: Colors.white,
                   borderRadius: new BorderRadius.only(
                       topLeft: const Radius.circular(25.0),
                       topRight: const Radius.circular(25.0))),
               child: Column(children:[
                 SizedBox(height: 20,),
                 Row(
                   children: [
                     SizedBox(width: 20,),
                     GestureDetector(
                         onTap: ()async{
                           File selected= await ImagePicker.pickImage(source: ImageSource.gallery);
                         },

                         child:Column(
                         children:[CircleAvatar(
                           backgroundColor: Colors.white,
                           backgroundImage: AssetImage('assets/gallary_img.png'),
                           radius: 30,
                         ),
                        Text('Gallary')])),
                     SizedBox(width: 20,),
                     GestureDetector(
                         onTap: ()async{
                           File selected= await ImagePicker.pickImage(source: ImageSource.camera);
                         },

                         child:Column( children: [CircleAvatar(
                       backgroundColor: Colors.white,
                       backgroundImage: AssetImage('assets/camera_img.png'),
                       radius: 30,
                     ),
                     Text('Camera')]))
                   ],
                 ),
               SizedBox(height: 20,)]),
             ),
           )
         ]
     );
   }


      });
    }
    //-------------------------------------------------------
final _picker = ImagePicker();
    return StreamProvider<QuerySnapshot>.value(
      value: DataBase_Services().Personal_data_stream,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.deepOrange),
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

                        CircleAvatar( backgroundColor: Colors.deepOrange,
                                  child: GestureDetector(
                                    onTap: ()async{
                                     _showEdit(7);
                                     //File selected= await ImagePicker.pickImage(source: ImageSource.gallery);
                                    },
                                      child:Icon(Icons.edit,color: Colors.white,)))
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

                        Text(_Card_No==null?'**** **** **** ****':_Card_No, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700, letterSpacing: 2.0),),

                        SizedBox(height: 32,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("CARD HOLDER", style: TextStyle(fontSize: 12, color: Colors.blue[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                                Text(_Card_Holder==null?'':_Card_Holder, style: TextStyle(fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                              ],
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("EXPIRES", style: TextStyle(fontSize: 12, color: Colors.blue[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                               Row(children:[
                                 Text(_EXP_MM==null?"MM/":_EXP_MM+"/", style: TextStyle(fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                                 Text(_EXP_YY==null?"YY":_EXP_YY, style: TextStyle(fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),

                               ]),
                              ],
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("CVV", style: TextStyle(fontSize: 12, color: Colors.blue[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                                Text(_CVV==null?"***":_CVV, style: TextStyle(fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
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

      ),
    );
  }
}
