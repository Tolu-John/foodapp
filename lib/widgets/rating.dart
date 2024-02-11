import 'package:flutter/material.dart';
import 'package:foodrecipe/constants.dart';

class Rating extends StatelessWidget {
  num rating;
  num reviews;

   Rating({super.key, required this.rating, required this.reviews});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme= Theme.of(context).textTheme;

    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       
        Icon(
          Icons.star,
          color: Colors.orange.shade400,
          size: 18,
        ),
      const SizedBox(
          width: 5,
        ),
        Text(
          "$rating",
          style: TextStyle(fontWeight: FontWeight.bold),

        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "($reviews reviews)",
          style: textTheme.bodySmall,
        ),
       const SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
