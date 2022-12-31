import 'package:flutter/material.dart';

class InstituteCard extends StatelessWidget {
  const InstituteCard({super.key});

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(
          0,
          0,
          0,
          MediaQuery.of(context).viewPadding.bottom,
        ),
        height: pageHeight * 0.22,
        width: pageWidth * 0.83,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
