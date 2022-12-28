import 'package:flutter/material.dart';

class SubjectGrid extends StatefulWidget {
  const SubjectGrid({
    Key? key,
    required List<Map<String, String>> subjectName,
  })  : _subjectName = subjectName,
        super(key: key);

  final List<Map<String, String>> _subjectName;

  @override
  State<SubjectGrid> createState() => _SubjectGridState();
}

class _SubjectGridState extends State<SubjectGrid> {
  int _selectedCard = -1;

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.fromLTRB(
        pageWidth * 0.01,
        pageHeight * 0.02,
        pageWidth * 0.01,
        0,
      ),
      height: pageHeight * 0.2,
      child: GridView.builder(
        itemCount: widget._subjectName.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2.7,
          crossAxisSpacing: 3,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                if (_selectedCard == index) {
                  _selectedCard = -1;
                } else {
                  _selectedCard = index;
                }
              });
            },
            child: Container(
              height: pageHeight * 0.06,
              margin: EdgeInsets.symmetric(
                horizontal: pageWidth * 0.01,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: _selectedCard == index
                    ? Theme.of(context).primaryColor
                    : const Color(0xffe6e6e6),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Image.asset(
                      widget._subjectName[index]['icon']!,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      widget._subjectName[index]['name']!,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: _selectedCard == index
                                ? Colors.white
                                : const Color(0xff364356),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
