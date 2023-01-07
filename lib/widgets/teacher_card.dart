import 'package:eduapp/dummy_data.dart';
import 'package:flutter/material.dart';

class TeacherCard extends StatelessWidget {
  final String name;
  final String subject;
  final Color color;
  final String pic;
  final int index;

  const TeacherCard({
    super.key,
    required this.name,
    required this.subject,
    required this.color,
    required this.pic,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Container(
      height: pageHeight * 0.21,
      width: pageWidth * 0.35,
      padding: const EdgeInsets.all(8),
      margin: index == (teacherData.length - 1)
          ? EdgeInsets.symmetric(
              horizontal: pageWidth * 0.05,
            )
          : EdgeInsets.only(
              left: pageWidth * 0.05,
            ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: pageHeight * 0.02,
              left: pageWidth * 0.025,
              right: pageWidth * 0.02,
            ),
            // margin: EdgeInsets.only(
            //     top: pageHeight * 0.01, left: pageWidth * 0.023),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: color,
            ),
            child: Image.asset(pic),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: pageWidth * 0.015, top: pageHeight * 0.005),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                name,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Color(0xff364356),
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: pageWidth * 0.015),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                subject,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xff636d77),
                  fontSize: 17.5,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
