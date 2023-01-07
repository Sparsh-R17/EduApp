import 'package:flutter/material.dart';

import '/dummy_data.dart';

class HeadingCard extends StatelessWidget {
  final int? indexUser;
  const HeadingCard({super.key, required this.indexUser});

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    TextEditingController searchController = TextEditingController();

    return Container(
      width: double.infinity,
      height: pageHeight * 0.26,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 244, 245, 249),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: pageWidth * 0.03,
                      top: pageHeight * 0.03,
                    ),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "Good Evening!",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: pageWidth * 0.03,
                      top: pageHeight * 0.005,
                    ),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        //Condition added to avoid null value
                        indexUser == null
                            ? 'Hardline Scott'
                            : userData[indexUser!].name,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: pageHeight * 0.03,
                ),
                child: Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)),
                  color: const Color.fromARGB(255, 232, 216, 216),
                  child: Image.asset('assets/Images/user_img_E8DBDB.png'),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: pageWidth * 0.7,
                height: pageHeight * 0.085,
                padding: EdgeInsets.only(
                  left: pageWidth * 0.03,
                  top: pageHeight * 0.02,
                ),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: pageHeight * 0.07 * 0.2,
                      horizontal: pageWidth * 0.03,
                    ),
                    hintText: 'Search your teacher',
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff364356),
                      fontSize: 14,
                    ),
                    suffixIcon: Container(
                      width: pageWidth * 0.145,
                      margin: EdgeInsets.fromLTRB(
                          0, pageWidth * 0.015, 0, pageWidth * 0.015),
                      padding:
                          EdgeInsets.symmetric(horizontal: pageWidth * 0.02),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: const MaterialStatePropertyAll(3.0),
                          // fixedSize: MaterialStatePropertyAll(Size(65,65)),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 86, 103, 253)),
                          shape:
                              MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                        ),
                        onPressed: () {
                        },
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    right: pageWidth * 0.06, top: pageHeight * 0.02),
                child: IconButton(
                  onPressed: () {
                  },
                  icon: Image.asset('assets/Images/Filter_icon.png'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
