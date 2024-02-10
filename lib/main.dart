import 'package:flutter/material.dart';
import 'package:foodrecipe/HomePage.dart';
import 'package:foodrecipe/constants.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Food Recipe',
      theme: ThemeData(
        fontFamily: "Poppins",
        textTheme: TextTheme(
          displayLarge: MyStyle.displayLarge(),
          displayMedium: MyStyle.displayMedium(),
          bodyLarge: MyStyle.bodyLarge(),
          displaySmall: MyStyle.bodyRating(),
          bodySmall: MyStyle.bodySmall(),
        )
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

