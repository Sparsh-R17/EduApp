import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;

  const StarRating({super.key, required this.rating});

  final bool halfStar = false;
  bool halfRating(rating) {
    bool tempStar = halfStar;
    if (rating % 1 == 0.5) {
      tempStar = true;
    }
    return tempStar;
  }

  IconData returnIcon(index, rating) {
    bool finalStar = halfRating(rating);
    rating = rating.floor();
    if (finalStar) {
      if (index < rating) {
        return Icons.star;
      } else if (index == rating) {
        return Icons.star_half;
      } else {
        return Icons.star_border;
      }
    } else {
      if (index < rating) {
        return Icons.star;
      } else {
        return Icons.star_border;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.min,
      children: List.generate(
        5,
        (index) => Icon(
          returnIcon(index, rating),
          color: Colors.amber,
          size: 11,
        ),
      ),
    );
  }
}
