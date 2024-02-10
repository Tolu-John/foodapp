import 'dart:ui';

import 'package:flutter/material.dart';

class MyStyle{
static TextStyle displayLarge() {
    return const TextStyle(
      fontSize: 24, // Adjusted from 28 to correspond to "displayLarge"
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle displayMedium() {
    return const TextStyle(
      fontSize: 20, // Adjusted from 24 to correspond to "displayMedium"
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bodyLarge() {
    return const TextStyle(
      fontSize: 16, // Adjusted from 18 to correspond to "bodyLarge"
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bodySmall() {
    return const TextStyle(
        fontSize: 14,
        color: Colors.grey // Adjusted from 14 to correspond to "bodySmall",
    );
  }
    static TextStyle bodyRating() {
      return const TextStyle(
          fontSize: 15,
          color: Colors.black// Adjusted from 14 to correspond to "bodySmall",
      );
  }


  static Color fr_grey= Color(0xFFA9A9A9);
  static Color fr_black= Color(0xFF000000);
  static Color fr_drk_grey_= Color(0xFF303030);
  static Color fr_red_= Color(0xFFE23E3E);
  }

class Constants{
  static const String headerText = "How to make french\ntoast";
  static const String bgI = "assets/images/image_13.png";
  static const String playImg = "assets/images/Play_button.png";
  static const String userImage = "assets/images/unsplash.png";
  static const String locationImage = "assets/images/Location.png";
  static const String coffeeImg = "assets/images/coffee.png";
  static const String burgerImg = "assets/images/burger.png";


  static const String userName = "Roberta Anny";
  static const String userLocation = "Bali, Indonesia";
  static const String  ingredientText= "Ingredients";
  static const String numItems = "5 items";
  static const num reviews = 300;
  static const num rating = 4.5;

  static const String milk = "Milk";
  static const String bread ="Bread";
  static const String eggs = "Eggs";
  static const String fish = "Fish";
  static const String meat ="Meat";
  static const String onions = "Onions";

  static const String fwText = "Follow";
  static const String reviewText = "Reviews";
  static const String weight = "200";
}
