import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roadrunners/src/data/category_data.dart';
import 'package:roadrunners/src/screens/cart.dart';
import 'package:roadrunners/src/screens/profile.dart';
import 'package:roadrunners/src/screens/sign_in.dart';
import 'package:roadrunners/src/subscreens/signin_navigator.dart';
import 'package:roadrunners/src/widgets/home.dart';

class NavBar extends StatefulWidget {

  @override
  _NavBarState createState() => _NavBarState();
}


class _NavBarState extends State<NavBar> {

  void initState(){
    super.initState();
  }

  List <Widget> CurrentScreen=[CartScreen(),Home(), ProfileScreen(),];

  /*final CurvedNavigationBarState navBarState =
        _bottomNavigationKey.currentState;
    navBarState.setPage(1);*/

  GlobalKey _bottomNavigationKey = GlobalKey();
int _page=index_changer;
  @override
  Widget build(BuildContext context) {

final _auth= Provider.of<User>(context);
    return Scaffold(
      body: _page==0 || _page== 1?CurrentScreen[_page]: _auth==null? GotoSignin(): CurrentScreen[_page],
      bottomNavigationBar: CurvedNavigationBar(
        index: _page,
        //height: height,
        key: _bottomNavigationKey,
        backgroundColor: Colors.deepOrange,
        items: <Widget>[
          Icon(Icons.shopping_cart, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
          setState(() {
            _page=index;
            print("index is" + _page.toString());
          });
        },
      ),
    );
  }
}
