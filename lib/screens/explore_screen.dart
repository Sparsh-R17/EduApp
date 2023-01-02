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
        child: SingleChildScrollView(
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
              const InstituteFilter(),
              SizedBox(
                height: pageHeight * 0.035,
              ),
              //TODO - Make the ListView.builder() here only and then pass the data to the Container
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: instituteData.length,
                  itemBuilder: (context, index) {
                    return InstituteCard(
                      name: instituteData[index].name,
                      field: instituteData[index].field,
                      desc: instituteData[index].desc,
                      pic: instituteData[index].pic,
                      color: instituteData[index].color,
                    );
                  }),
            ],
          ),
        ),
      ),
      //TODO - Bottom Navigation Bar
    );
  }
}
