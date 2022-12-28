import 'package:eduapp/screens/signin.dart';
import 'package:eduapp/screens/signup.dart';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(
            'assets/Images/intro_page.png',
            width: pageWidth * 0.5 * 1.6,
            height: pageHeight * 0.4 * 1.1,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: pageHeight * 0.005,
              horizontal: pageWidth * 0.09,
            ),
            child: const Center(
              child: Text(
                "Let's find the \"A\" with us",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: pageHeight * 0.02,
              right: pageWidth * 0.09,
              left: pageWidth * 0.09,
              bottom: pageHeight * 0.09,
            ),
            child: Text(
              "Please Sign in to view personalised recommendations",
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(pageWidth * 0.172, pageHeight * 0.0607,
                pageWidth * 0.172, pageHeight * 0.03),
            child: SizedBox(
              height: pageHeight * 0.075,
              width: pageWidth * 1.15,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(SignIn.routeName);
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          TextButton(
            child: const Text(
              'Sign up',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(SignUp.routeName);
            },
          )
        ],
      )),
    );
  }
}
