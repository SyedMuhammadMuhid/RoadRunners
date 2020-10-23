import 'package:flutter/material.dart';
import 'package:roadrunners/src/models/Category_model.dart';
import 'package:roadrunners/src/models/Frequent_food_model.dart';

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
  'Hello, Buy food now 😊'

];