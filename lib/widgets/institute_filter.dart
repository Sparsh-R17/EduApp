import 'package:flutter/material.dart';

class InstituteFilter extends StatefulWidget {
  const InstituteFilter({super.key});

  @override
  State<InstituteFilter> createState() => _InstituteFilterState();
}

class _InstituteFilterState extends State<InstituteFilter> {
  final List<String> _teacherFilterTypes = [
    'Island',
    'Province',
    'Districts',
  ];
  final List<int> _rememberChoice = [];
  bool _showChips = false;

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Container(
      // color: Colors.red,
      margin: EdgeInsets.fromLTRB(0, pageHeight * 0.03, 0, 0),
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
                  'Popular Institution',
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
                      fontSize: 12,
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
                              if (_rememberChoice.contains(
                                _teacherFilterTypes.indexOf(filter),
                              )) {
                                _rememberChoice.remove(
                                    _teacherFilterTypes.indexOf(filter));
                              } else {
                                _rememberChoice.add(
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
                                color: _rememberChoice.contains(
                                  _teacherFilterTypes.indexOf(filter),
                                )
                                    ? Colors.white
                                    : const Color(0xff364356),
                              ),
                              backgroundColor: _rememberChoice.contains(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
