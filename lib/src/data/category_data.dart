import 'package:flutter/material.dart';
import 'package:roadrunners/src/models/Category_model.dart';
import 'package:roadrunners/src/models/Frequent_food_model.dart';
import 'package:roadrunners/src/models/cart_model.dart';
import 'package:roadrunners/src/models/profile_model.dart';
import 'package:roadrunners/src/subscreens/favourites.dart';
import 'package:roadrunners/src/subscreens/invite_friends.dart';
import 'package:roadrunners/src/subscreens/payment_method.dart';
import 'package:roadrunners/src/subscreens/payment_records.dart';
import 'package:roadrunners/src/subscreens/personal_data.dart';
import 'package:roadrunners/src/subscreens/order_history.dart';
import 'package:roadrunners/src/subscreens/support.dart';

final categories=[
  CategoryModel( categoryName: 'Burgers', categoryImagePath:'assets/burger.png', numberOfItems: 43),
  CategoryModel(categoryName: 'Pizzas', categoryImagePath:'assets/pizza.png', numberOfItems: 34),
  CategoryModel(categoryName: 'Drinks', categoryImagePath:'assets/beer.png', numberOfItems: 50),
  CategoryModel(categoryName: 'Coffee', categoryImagePath:'assets/coffee-cup.png', numberOfItems: 12),
  CategoryModel(categoryName: 'Breakfasts', categoryImagePath:'assets/breakfast.png', numberOfItems: 11),
  CategoryModel(categoryName: 'Sweets', categoryImagePath:'assets/cupcake.png', numberOfItems: 9)



];
final frequently_bought_food_data=[
  FrequentFoodModel(foodName: 'Hot Coffee', categoryImagePath: 'assets/breakfast.jpeg', money: 7, moneyLevel:'💸 💸', location: 'La Cafe, Spain', rating: 4.5),
  FrequentFoodModel(foodName: 'Chicken Steak', categoryImagePath: 'assets/lunch.jpeg', money: 25, moneyLevel:'💸 💸 💸', location: 'La Luna, Spain', rating: 4.5),
  FrequentFoodModel(foodName: 'Cheese Pizza', categoryImagePath: 'assets/pizza_bg.jpg', money: 9, moneyLevel:'💸 💸', location: 'La Fieasta, Spain', rating: 4.5),
  FrequentFoodModel(foodName: 'Muffin coco', categoryImagePath: 'assets/muffins.jpg', money: 3, moneyLevel:'💸 ', location: 'Sweet Shop, Spain', rating: 4.5),
  FrequentFoodModel(foodName: 'Filled Donuts', categoryImagePath: 'assets/donuts.jpg', money: 4, moneyLevel:'💸 ', location: 'Dounkin Donuts, Spain', rating: 4.5)

];
final notifications_data=[
  'Use #Fastest to get 10% discount',
  'Dude, What are you waiting for !!',
  'Food on it way',
  'New Pizza Deals available',
  'Hello, Buy food now 😊',
  'You just ordered, right?'

];

final cart_data=[
  CartModel(foodName: 'Hot Coffee', foodImagePath: 'assets/breakfast.jpeg', numberOfItems: 2, location: 'La Cafe, Spain', price:  7),
  CartModel(foodName: 'Filled Donuts', foodImagePath: 'assets/donuts.jpg', numberOfItems: 6, location: 'Dounkin Donuts, Spain', price:  4),
  CartModel(foodName: 'Muffin coco', foodImagePath: 'assets/muffins.jpg', numberOfItems: 3, location: 'Sweet Shop, Spain', price:  3),

];

final profile_info_list=[
  ProfileModel(dataName:'Personal Data', icon: Icon(Icons.data_usage, color: Colors.deepOrange,),screen: PersonalData()),
  ProfileModel(dataName:'Favourites', icon: Icon(Icons.favorite, color: Colors.deepOrange,),screen: Favourites()),
ProfileModel(dataName:'Order History', icon: Icon(Icons.history, color: Colors.deepOrange,), screen: OrderHistory()),
  ProfileModel(dataName:'Payment Methods', icon: Icon(Icons.whatshot, color: Colors.deepOrange,), screen: CardScreen()),
  ProfileModel(dataName:'Change Password', icon: Icon(Icons.remove_red_eye, color: Colors.deepOrange,),screen: PaymentRecords()),
ProfileModel(dataName:'Invite Friends', icon: Icon(Icons.send, color: Colors.deepOrange,),screen: InviteFriends()),
ProfileModel(dataName:'Support', icon: Icon(Icons.help, color: Colors.deepOrange,),screen: Support()),
];

int index_changer=1;
bool proceeder= false;
