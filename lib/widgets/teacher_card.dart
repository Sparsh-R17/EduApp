import 'package:flutter/material.dart';

class TeacherCard extends StatelessWidget {
  const TeacherCard({super.key});

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Container(
      height: pageHeight * 0.21,
      width: pageWidth * 0.35,
      margin: EdgeInsets.symmetric(horizontal: pageWidth * 0.06),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Text('   Teacher Card'),
    );
  }
}
