import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(30),

      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal:18 , vertical:11 ),
          fillColor: Colors.white,
           suffixIcon: Material(elevation: 8,
               borderRadius: BorderRadius.circular(30),
               child: Icon(Icons.search, size: 30,color: Colors.deepOrange,)),
          hintText: 'Search Any Food!!!',
          border: InputBorder.none
        ),
      ),
    );
  }
}
