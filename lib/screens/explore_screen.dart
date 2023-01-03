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
    final pageWidth = MediaQuery.of(context).size.width;
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
              Container(
                height: pageHeight * 0.25,
                width: double.infinity,
                margin: EdgeInsets.only(left: pageWidth * 0.06),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return TeacherCard(
                      name: teacherData[index].name,
                      subject: teacherData[index].subject,
                      color: teacherData[index].color,
                      pic: teacherData[index].pic,
                    );
                  }),
                  itemCount: teacherData.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const InstituteFilter(),
              SizedBox(
                height: pageHeight * 0.035,
              ),
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
