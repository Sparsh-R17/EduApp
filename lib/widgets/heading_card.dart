import 'package:flutter/material.dart';

class HeadingCard extends StatelessWidget {
  const HeadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    
    return Container(
      width: double.infinity,
      height: pageHeight * 0.25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      //! CONTINUE YOUR CODE FROM HERE
    );
  }
}
