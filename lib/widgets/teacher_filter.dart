import 'package:flutter/material.dart';

class TeacherFilter extends StatefulWidget {
  const TeacherFilter({super.key});

  @override
  State<TeacherFilter> createState() => _TeacherFilterState();
}

class _TeacherFilterState extends State<TeacherFilter> {
  final List<String> _teacherFilterTypes = [
    'Island',
    'Province',
    'Districts',
  ];
  final List<String> _subjectFilterTypes = [
    'All Subjects',
    'Biology',
    'Chemistry',
    'Physics',
    'Science for Technology',
  ];
  final List<int> _rememberChoiceOfArea = [];
  final List<int> _rememberChoiceOfSubject = [];
  bool _showChips = false;

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Container(
      // color: Colors.red,
      margin: EdgeInsets.fromLTRB(0, pageHeight * 0.02, 0, 0),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: pageWidth * 0.07),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Popular Teachers',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _showChips = !_showChips;
                    });
                  },
                  child: Icon(
                    Icons.filter_list_alt,
                    color: const Color(0xff636D77),
                    size: pageWidth * 0.08,
                  ),
                ),
              ],
            ),
            Visibility(
              visible: _showChips,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: pageHeight * 0.02,
                  ),
                  const Text(
                    'Area',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: pageHeight * 0.01,
                  ),
                  Wrap(
                    children: _teacherFilterTypes.map(
                      (filter) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              if (_rememberChoiceOfArea.contains(
                                _teacherFilterTypes.indexOf(filter),
                              )) {
                                _rememberChoiceOfArea.remove(
                                    _teacherFilterTypes.indexOf(filter));
                              } else {
                                _rememberChoiceOfArea.add(
                                  _teacherFilterTypes.indexOf(filter),
                                );
                              }
                            });
                            // _teacherFilterIndex = index;
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              0,
                              pageWidth * 0.03,
                              0,
                            ),
                            child: Chip(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.77),
                              ),
                              label: Text(filter),
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.79,
                                color: _rememberChoiceOfArea.contains(
                                  _teacherFilterTypes.indexOf(filter),
                                )
                                    ? Colors.white
                                    : const Color(0xff364356),
                              ),
                              backgroundColor: _rememberChoiceOfArea.contains(
                                _teacherFilterTypes.indexOf(filter),
                              )
                                  ? Theme.of(context).primaryColor
                                  : Colors.white,
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                  SizedBox(
                    height: pageHeight * 0.02,
                  ),
                  const Text(
                    'Subject',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: pageHeight * 0.01,
                  ),
                  Wrap(
                    children: _subjectFilterTypes.map(
                      (filter) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              //When the List is Empty
                              if (_rememberChoiceOfSubject.isEmpty) {
                                if (_subjectFilterTypes.indexOf(filter) == 0) {
                                  //All Selection
                                  for (int i = 0;
                                      i < _subjectFilterTypes.length;
                                      i++) {
                                    _rememberChoiceOfSubject.add(i);
                                  }
                                } else {
                                  //First Single Selection
                                  _rememberChoiceOfSubject
                                      .add(_subjectFilterTypes.indexOf(filter));
                                }
                              }
                              //If the list contains some value (NOT EMPTY).
                              else {
                                //All Option and Option selected removal
                                if (_rememberChoiceOfSubject.contains(0) &&
                                    _subjectFilterTypes.indexOf(filter) != 0) {
                                  _rememberChoiceOfSubject.remove(0);
                                  _rememberChoiceOfSubject.remove(
                                      _subjectFilterTypes.indexOf(filter));
                                }
                                // All option - Off Feature
                                else if (_rememberChoiceOfSubject.contains(0) &&
                                    _subjectFilterTypes.indexOf(filter) == 0) {
                                  _rememberChoiceOfSubject.clear();
                                } else {
                                  //All option selected after individual selections done
                                  if (_subjectFilterTypes.indexOf(filter) ==
                                      0) {
                                    _rememberChoiceOfSubject.clear();
                                    for (int i = 0;
                                        i < _subjectFilterTypes.length;
                                        i++) {
                                      _rememberChoiceOfSubject.add(i);
                                    }
                                  }
                                  //Individual Removal
                                  else if (_rememberChoiceOfSubject.contains(
                                      _subjectFilterTypes.indexOf(filter))) {
                                    _rememberChoiceOfSubject.remove(
                                        _subjectFilterTypes.indexOf(filter));
                                  } else {
                                    //Multiple Individual  selection
                                    _rememberChoiceOfSubject.add(
                                        _subjectFilterTypes.indexOf(filter));
                                  }
                                }
                              }
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              0,
                              pageWidth * 0.03,
                              0,
                            ),
                            child: Chip(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.77),
                              ),
                              label: Text(filter),
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.79,
                                color: _rememberChoiceOfSubject.contains(
                                  _subjectFilterTypes.indexOf(filter),
                                )
                                    ? Colors.white
                                    : const Color(0xff364356),
                              ),
                              backgroundColor:
                                  _rememberChoiceOfSubject.contains(
                                _subjectFilterTypes.indexOf(filter),
                              )
                                      ? Theme.of(context).primaryColor
                                      : Colors.white,
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
