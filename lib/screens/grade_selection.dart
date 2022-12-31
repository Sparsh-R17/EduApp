import 'package:flutter/material.dart';

import 'explore_screen.dart';
import '/screens/state_selection.dart';
import '/widgets/grade_list.dart';

class GradeSelection extends StatefulWidget {
  const GradeSelection({super.key});
  static const routeName = '/grade-selection';

  @override
  State<GradeSelection> createState() => _GradeSelectionState();
}

class _GradeSelectionState extends State<GradeSelection> {
  int clickDetect = -1;

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;

    final List<String> gradeNumber = [
      '1 -5',
      '6 - 9',
      '10 - 11',
      '12 - 13',
    ];

    final List<Map<String, String>> subjectName = [
      {
        'icon': 'assets/Images/arts.png',
        'name': 'Arts',
      },
      {
        'icon': 'assets/Images/commerce.png',
        'name': 'Commerce',
      },
      {
        'icon': 'assets/Images/maths.png',
        'name': 'Maths',
      },
      {
        'icon': 'assets/Images/science.png',
        'name': 'Science',
      },
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                pageWidth * 0.07,
                pageHeight * 0.05,
                10,
                10,
              ),
              child: Text(
                'What\'s your grade ? ',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            GradeList(
              gradeNumber: gradeNumber,
              subjectName: subjectName,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(
                  0,
                  pageHeight * 0.03,
                  0,
                  0,
                ),
                width: pageWidth * 0.64,
                height: pageHeight * 0.07,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(StateSelection.routeName);
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  0,
                  pageHeight * 0.01,
                  0,
                  0,
                ),
                child: TextButton(
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(ExploreScreen.routeName);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
