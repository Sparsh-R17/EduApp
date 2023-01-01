import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/explore_screen.dart';
import '/screens/grade_selection.dart';
import '/screens/state_selection.dart';
import '/screens/signin.dart';
import '/screens/signup.dart';
import '/screens/intro.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  ).then(
    (_) => runApp(
      const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xff5667FD),
        canvasColor: Colors.black,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 25,
          ),
          displayMedium: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            color: Color(0xff636D77),
            fontSize: 18,
          ),
          displaySmall: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            color: Color(0xff364356),
            fontSize: 16.27,
          ),
          labelMedium: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          labelSmall: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300,
            color: Color(0xff364356),
            fontSize: 14,
          ),
          titleLarge: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 32,
            // color: Color.fromRGBO(38, 50, 56, 1),
            color: Color(0xff364356),
            // color: Colors.red,
          ),
          titleMedium: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color(0xff455A64),
            // color: Colors.red,
          ),
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            splashFactory: NoSplash.splashFactory,
            backgroundColor: MaterialStatePropertyAll(
              Color(0xff5667FD),
            ),
          ),
        ),
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            splashFactory: NoSplash.splashFactory,
            foregroundColor: MaterialStatePropertyAll(
              Color(0xff5667FD),
            ),
          ),
        ),
      ),
      routes: {
        '/': (context) => const ExploreScreen(),
        SignIn.routeName: (context) => const SignIn(),
        SignUp.routeName: (context) => const SignUp(),
        GradeSelection.routeName: (context) => const GradeSelection(),
        StateSelection.routeName: (context) => const StateSelection(),
        ExploreScreen.routeName: (context) => const ExploreScreen(),
      },
      // home: const Intro(),
    );
  }
}
