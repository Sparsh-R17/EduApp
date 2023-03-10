import 'package:flutter/material.dart';

import '../dummy_data.dart';

import '../widgets/heading_card.dart';
import '../widgets/teacher_filter.dart';
import '../widgets/teacher_card.dart';
import '../widgets/institute_filter.dart';
import '../widgets/institute_card.dart';
import '../widgets/bottom_nav.dart';


// ignore: must_be_immutable
class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});
  static const routeName = '/explore-screen';
  dynamic curTime;
  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final routeArgs = ModalRoute.of(context)?.settings.arguments as int?;
    final indexUser = routeArgs;
    return Scaffold(
      body: WillPopScope(
        onWillPop: () {
          DateTime now = DateTime.now();
          if (curTime == null ||
              now.difference(curTime) > const Duration(seconds: 2)) {
            curTime = now;
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Press back again to exit!"),
              )
            );
            return Future.value(false);
          }
          return Future.value(true);
        },
        child: SafeArea(
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (notification) {
              notification.disallowIndicator();
              return true;
            },
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadingCard(indexUser: indexUser),
                  const TeacherFilter(),
                  SizedBox(
                    height: pageHeight * 0.035,
                  ),
                  SizedBox(
                    height: pageHeight * 0.25,
                    width: double.infinity,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: ((context, index) {
                        return TeacherCard(
                          name: teacherData[index].name,
                          subject: teacherData[index].subject,
                          color: teacherData[index].color,
                          pic: teacherData[index].pic,
                          index: index,
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
                          star: instituteData[index].star,
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
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
