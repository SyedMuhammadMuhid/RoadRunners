import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadrunners/src/data/category_data.dart';
import 'package:roadrunners/src/models/profile_model.dart';
import 'package:roadrunners/src/popups/logout_popup.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 5;
    List<ProfileModel> profile_info_data = profile_info_list;
    String iconName;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepOrange,
        body: ListView(children: [
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: height * 1.2,
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/propic.png'),
                              radius: 50,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'UserName',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black87),
                          ),
                          Text('user.email@gmail.com')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: height * 3,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: profile_info_list.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (
                          BuildContext context,
                          int index,
                        ) {
                          //if(index>0){controller.animateTo(controller.position.maxScrollExtent);}
                          return Container(
                              height: (height * 3) / 7,
                              width: MediaQuery.of(context).size.width,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          profile_info_data[index].screen));
                                },
                                child: Card(
                                  child: Row(
                                    children: <Widget>[
                                      profile_info_data[index].icon,
                                      SizedBox(
                                        width: 14,
                                      ),
                                      Text(
                                        profile_info_data[index].dataName,
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ));
                        },
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                  left: 350,
                  top: 30,
                  child: IconButton(
                    icon: Icon(
                      Icons.exit_to_app,
                    ),
                    onPressed: () {

                      logout_popup(context);
                    },
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
