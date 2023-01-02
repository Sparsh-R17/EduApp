import 'package:flutter/material.dart';


class InstituteCard extends StatelessWidget {
  final String name;
  final String field;
  final String desc;
  final String pic;
  final Color color;

  const InstituteCard({required this.name, required this.field, required this.desc, required this.pic, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    
        return Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(
              0,
              0,
              0,
              MediaQuery.of(context).viewPadding.bottom + pageHeight * 0.02,
            ),
            alignment: Alignment.center,
            // padding: EdgeInsets.symmetric(horizontal: pageWid),
            height: pageHeight * 0.22,
            width: pageWidth * 0.83,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: pageWidth * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: pageHeight * 0.195,
                    width: pageWidth * 0.35,
                    decoration: BoxDecoration(
                      color:color,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      pic,
                      height: pageHeight * 0.131,
                      width: pageWidth * 0.328,
                    ),
                  ),
                  SizedBox(
                    width: pageWidth * 0.425,
                    height: pageHeight * 0.171,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                name,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                            const Text(
                              "Stars Here",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: pageHeight * 0.01,
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              field,
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color(0xff455A64),
                                // color: Colors.red,
                              ),
                            ),
                            Text(
                              desc,
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                color: Color(0xff364356),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
  }

