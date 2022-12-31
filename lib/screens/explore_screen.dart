import 'package:flutter/material.dart';

import '../dummy_data.dart';

import '../widgets/heading_card.dart';
import '../widgets/teacher_filter.dart';
import '../widgets/teacher_card.dart';
import '../widgets/institute_filter.dart';
import '../widgets/institute_card.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});
  static const routeName = '/explore-screen';

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadingCard(),
            const TeacherFilter(),
            SizedBox(
              height: pageHeight * 0.035,
            ),
            //TODO - Make the ListView.builder() here only and then pass the data to the Container (scroll direction horizontal)
            const TeacherCard(),
            SizedBox(
              height: pageHeight * 0.035,
            ),
            const InstituteFilter(),
            SizedBox(
              height: pageHeight * 0.035,
            ),
            //TODO - Make the ListView.builder() here only and then pass the data to the Container
            const InstituteCard(),
          ],
        ),
      ),
      //TODO - Bottom Navigation Bar
    );
  }
}
