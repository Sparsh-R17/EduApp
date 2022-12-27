import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            color: Colors.white,
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
          ),
          titleLarge: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 32,
            color: Color.fromRGBO(38, 50, 56, 1),
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
            backgroundColor: MaterialStatePropertyAll(
              Color(0xff5667FD),
            ),
          ),
        ),
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(
              Color(0xff5667FD),
            ),
          ),
        ),
      ),
      home: const TrialPage(),
    );
  }
}

class TrialPage extends StatelessWidget {
  const TrialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Hello'),
              onPressed: () {},
            ),
            TextButton(
              child: const Text('Hello'),
              onPressed: () {},
            ),
            Container(
              color: Colors.white,
              height: 200,
              width: double.infinity,
              child: Text(
                'Good Morning',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              color: Colors.white,
              height: 200,
              width: double.infinity,
              child: Text(
                'Good Morning',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Image.asset('assets/Images/sign_in.png'),
          ],
        ),
      ),
    );
  }
}
