import 'package:flutter/material.dart';

const input_text_decoration_variable_for_non_focus= OutlineInputBorder(
    borderSide: BorderSide(
        color: Colors.white, width: 2.0
    ));

const input_text_decoration_variable_for_focus= OutlineInputBorder(
    borderSide: BorderSide(
        color: Colors.deepOrange, width: 2.0
    ));

class EmptyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     height: 50,
      width: MediaQuery.of(context).size.width,
      color: Colors.deepOrange,
      child: Card(
        child: Text('hello'),
      ),
    );
  }
}
