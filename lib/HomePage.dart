import 'package:flutter/material.dart';
import 'package:foodrecipe/Ingredients.dart';
import 'package:foodrecipe/constants.dart';
import 'package:foodrecipe/widgets/appbar.dart';
import 'package:foodrecipe/widgets/author.dart';
import 'package:foodrecipe/widgets/rating.dart';
import 'package:foodrecipe/widgets/video.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000), // Adjust duration as needed
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceIn,
      ),
    );

    _animation1 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      ),
    );

    _animation2 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInCirc,
      ),
    );

    _animation3 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInQuad,
      ),
    );

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme= Theme.of(context).textTheme;

    return Scaffold(
      appBar: Appbar_(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeTransition(
                opacity: _animation,
                child: Text(
                  FrConstants.headerText,
                  style: textTheme.displayLarge,),
              ),
              const SizedBox(
                height: 20,
              ),
              FadeTransition(
                opacity: _animation,
                child:  Video(bgImage: FrConstants.bgI ),
              ),
              const SizedBox(
                height: 14,
              ),
              FadeTransition(
                opacity: _animation1,
                child:   Rating(rating: FrConstants.rating, reviews: FrConstants.reviews),
              ),
              const SizedBox(
                height: 20,
              ),
              FadeTransition(
                opacity: _animation2,
                child:  Author(image: FrConstants.userImage, name: FrConstants.userName, location: FrConstants.userLocation),
              ),
              const SizedBox(
                height: 25,
              ),
              FadeTransition(
                opacity: _animation3,
                child:  Ingredients(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
