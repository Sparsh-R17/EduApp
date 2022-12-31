import 'package:flutter/material.dart';

class TeacherFilter extends StatelessWidget {
  const TeacherFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.red,
      margin: EdgeInsets.fromLTRB(0, pageHeight * 0.035, 0, 0),
      width: double.infinity,
      child: const Text('Teacher Filtration Area'),
    );
  }
}
