import 'package:flutter/material.dart';

import '../dummy_data.dart';

class StateList extends StatefulWidget {
  const StateList({super.key});

  @override
  State<StateList> createState() => _StateListState();
}

class _StateListState extends State<StateList> {
  int _clickCounter = -1;
  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffededed),
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.fromLTRB(
          0,
          pageHeight * 0.02,
          0,
          0,
        ),
        width: pageWidth * 0.87,
        height: pageHeight * 0.56,
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
            overscroll.disallowIndicator();
            return true;
          },
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: pageWidth * 0.007),
            itemCount: stateName.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2.77,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(
                    () {
                      if (_clickCounter == index) {
                        _clickCounter = -1;
                      } else {
                        _clickCounter = index;
                      }
                    },
                  );
                },
                child: Card(
                  color: _clickCounter == index
                      ? Theme.of(context).primaryColor
                      : const Color(0xffe6e6e6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.48),
                  ),
                  elevation: 0,
                  child: Center(
                    child: Text(
                      stateName[index],
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: _clickCounter == index
                                ? Colors.white
                                : const Color(0xff364356),
                          ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
