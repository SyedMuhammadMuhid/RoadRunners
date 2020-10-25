import 'package:flutter/material.dart';

class CartModel{
  final String foodName;
  final String foodImagePath;
  final int numberOfItems;
  final String location;
  final double price;
  CartModel({this.foodName,this.foodImagePath, this.numberOfItems, this.location,this.price});

}