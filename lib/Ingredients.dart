import 'package:flutter/material.dart';
import 'package:foodrecipe/constants.dart';
import 'package:foodrecipe/widgets/recipe.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({super.key});

  @override
  Widget build(BuildContext context) {
   TextTheme textTheme= Theme.of(context).textTheme;

    return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
               FrConstants.ingredientText,
              style: textTheme.displayMedium,
            ),
            Text(
               FrConstants.numItems,
              style: textTheme.bodySmall,)
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Recipe(
          image:   FrConstants.burgerImg,
          name:   FrConstants.bread,
          weight:  FrConstants.weight,
        ),
        SizedBox(height: 15),
        Recipe(
          image:   FrConstants.coffeeImg ,
          name:   FrConstants.eggs,
          weight:  FrConstants.weight,
        ),
        SizedBox(height: 15),
        Recipe(
          image:  FrConstants.burgerImg,
          name:  FrConstants.fish,
          weight:  FrConstants.weight,
        ),
        SizedBox(height: 15),
        Recipe(
          image:  FrConstants.coffeeImg ,
          name:  FrConstants.meat,
          weight:  FrConstants.weight,
        ),
        SizedBox(height: 15),
        Recipe(
          image:   FrConstants.burgerImg,
          name:   FrConstants.onions,
          weight:  FrConstants.weight,
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
