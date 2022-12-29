import 'package:flutter/material.dart';
import './subject_grid.dart';

class GradeList extends StatefulWidget {
  const GradeList({
    Key? key,
    required this.gradeNumber,
    required List<Map<String, String>> subjectName,
  })  : _subjectName = subjectName,
        super(key: key);

  final List<String> gradeNumber;
  final List<Map<String, String>> _subjectName;

  @override
  State<GradeList> createState() => _GradeListState();
}

class _GradeListState extends State<GradeList> {
  int clickDetect = -1;
  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: pageHeight * 0.62,
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          return true;
        },
        child: ListView.builder(
          itemCount: widget.gradeNumber.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => setState(
                () {
                  if (clickDetect == index) {
                    clickDetect = -1;
                  } else {
                    clickDetect = index;
                  }
                },
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffededed),
                ),
                height: clickDetect == index
                    ? pageHeight * 0.265
                    : pageHeight * 0.063,
                width: pageWidth * 0.83,
                padding: EdgeInsets.symmetric(
                  horizontal: pageWidth * 0.02,
                  vertical: pageHeight * 0.015,
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: pageWidth * 0.05,
                  vertical: pageHeight * 0.02,
                ),
                // duration: const Duration(milliseconds: 300),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Grade ${widget.gradeNumber[index]}',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Icon(
                          clickDetect == index
                              ? Icons.expand_less
                              : Icons.expand_more,
                          color: const Color(0xff636D77),
                        )
                      ],
                    ),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      visible: clickDetect == index,
                      child: SubjectGrid(
                        subjectName: widget._subjectName,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
