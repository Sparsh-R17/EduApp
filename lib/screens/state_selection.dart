import 'package:flutter/material.dart';

import 'explore_screen.dart';
import '/widgets/state_list.dart';

class StateSelection extends StatelessWidget {
  const StateSelection({super.key});
  static const routeName = '/state-selection';

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
                'What\'s your State ? ',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            const StateList(),
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(
                  0,
                  pageHeight * 0.05,
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
                    Navigator.of(context)
                        .pushReplacementNamed(ExploreScreen.routeName);
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
