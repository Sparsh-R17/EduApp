import 'package:eduapp/screens/grade_selection.dart';
import 'package:eduapp/screens/signup.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';

import '/screens/explore_screen.dart';
import '/screens/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  static const routeName = '/sign-in';

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _passVisible = false;
  bool _imgVisible = true;

  late String a;

  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void enterValue() {
    final submittedName = nameController.text;
    final submittedPass = passController.text;

    int x = -1;

    if (submittedName.isEmpty || submittedPass.isEmpty) {
      return;
    }
    for (var i = 0; i < userData.length; i++) {
      if (userData[i].email == submittedName) {
        x = i;
      }
    }
    if (x != -1) {
      if (userData[x].pass == submittedPass) {
        // print("You have logged in successfully");
        Navigator.pushReplacementNamed(context, GradeSelection.routeName);
      } else {
        // print("Wrong password! Try Again!");
        a = "Wrong password! Try Again!";
      }
    } else {
      // print("User doesn't exist");
      a = "User doesn't exist";
    }
  }

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: DoubleBackToCloseApp(
          snackBar: const SnackBar(
            content: Text(
              textAlign: TextAlign.center,
              "Press back again to exit!",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Color(0xff364356),
                fontSize: 16,
              ),
            ),
            backgroundColor: Colors.white,
          ),
          child: SafeArea(
              child: Column(
            children: [
              Padding(
                padding: _imgVisible
                    ? const EdgeInsets.all(0)
                    : EdgeInsets.fromLTRB(0, 0, 0, pageHeight * 0.1),
                child: SizedBox(
                  child: Visibility(
                    visible: _imgVisible,
                    child: Image.asset(
                      'assets/Images/sign_in.png',
                      width: pageWidth * 0.6472 * 1.4, // 0.577
                      height: pageHeight * 0.3232 * 1.4, // 0.18
                      // height: ,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                  bottom: pageHeight * 0.01,
                  left: pageWidth * 0.085,
                ),
                child: Text(
                  'Email address',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    pageWidth * 0.085, 0, pageWidth * 0.085, 0),
                child: SizedBox(
                  height: pageHeight * 0.064,
                  child: TextField(
                    controller: nameController,
                    onSubmitted: (_) => enterValue(),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: pageHeight * 0.064 * 0.5,
                        horizontal: pageWidth * 0.0389,
                      ),
                      hintText: 'name@example.com',
                      hintStyle: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                  top: pageHeight * 0.024,
                  bottom: pageHeight * 0.01,
                  left: pageWidth * 0.085,
                ),
                child: Text(
                  'Password',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    pageWidth * 0.085, 0, pageWidth * 0.085, 0),
                child: SizedBox(
                  height: pageHeight * 0.064,
                  child: TextField(
                    obscureText: !_passVisible,
                    onTap: () {
                      setState(() {
                        _imgVisible = !_imgVisible;
                      });
                    },
                    onSubmitted: (value) {
                      enterValue();
                      _imgVisible = !_imgVisible;
                    },
                    controller: passController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: pageHeight * 0.064 * 0.5,
                        horizontal: pageWidth * 0.0389,
                      ),
                      hintText: 'Password',
                      hintStyle: Theme.of(context).textTheme.labelSmall,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        onPressed: () {
                          setState(() {
                            _passVisible = !_passVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(pageWidth * 0.172,
                    pageHeight * 0.0607, pageWidth * 0.172, pageHeight * 0.03),
                child: SizedBox(
                  height: pageHeight * 0.074,
                  width: pageWidth * 0.6472,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, ExploreScreen.routeName);
                      // print(nameController.text);
                      // print(passwordController.text);
                      if (nameController.text.isNotEmpty &&
                          passController.text.isNotEmpty) {
                        enterValue();
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text(
                              "Login Notice!",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Color.fromARGB(255, 230, 20, 72),
                                // color: Colors.red,
                              ),
                            ),
                            content: Text(
                              a.toString(),
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff364356),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  if (a == "User doesn't exist") {
                                    Navigator.pushReplacementNamed(
                                      context,
                                      SignUp.routeName,
                                    );
                                  } else {
                                    Navigator.of(context).pop;
                                  }
                                },
                                child: const Text("Continue"),
                              )
                            ],
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Don't have account?",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white,
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
                      //signup screen
                      Navigator.pushReplacementNamed(context, SignUp.routeName);
                    },
                  )
                ],
              ),
            ],
          )),
        ));
  }
}
