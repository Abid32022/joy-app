import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedRatingStars(
        initialRating: 3.5,
        minRating: 0.0,
        maxRating: 5.0,
        filledColor: Colors.amber,
        emptyColor: Colors.grey,
        filledIcon: Icons.star,
        halfFilledIcon: Icons.star_half,
        emptyIcon: Icons.star_border,
        onChanged: (double rating) {
          // Handle the rating change here
          print('Rating: $rating');
        },
        displayRatingValue: true,
        interactiveTooltips: true,
        customFilledIcon: Icons.star,
        customHalfFilledIcon: Icons.star_half,
        customEmptyIcon: Icons.star_border,
        starSize: 30.0,
        animationDuration: Duration(seconds: 1),
        animationCurve: Curves.easeInOut,
        readOnly: false,
      ),
    );
  }
}
