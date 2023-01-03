import 'dart:math';

import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;

  StarRating({super.key, required this.rating});

  bool halfStar = false;
  void halfRating(rating) {
    if (rating % 1 == 0.5) {
      halfStar = true;
    }
  }

  IconData returnIcon(index, rating) {
    halfRating(rating);
    rating = rating.floor();
    if (halfStar) {
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
