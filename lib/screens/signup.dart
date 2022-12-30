import 'package:eduapp/screens/grade_selection.dart';
import 'package:eduapp/screens/signin.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../models/user.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  static const routeName = '/sign-up';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _passVisible = false;
  bool _imgVisible = true;

  String info = "";

  TextEditingController inpEmailController = TextEditingController();
  TextEditingController inpNameController = TextEditingController();
  TextEditingController inpPassController = TextEditingController();

  void newUserCreate(String newEmail, String newName, String newPass) {
    bool exist = false;

    if (newEmail.isEmpty || newName.isEmpty || newPass.isEmpty) {
      info = "Fill all the details, Idiot!";
    } else {
      for (var i = 0; i < userData.length; i++) {
        if (userData[i].email == newEmail) {
          exist = true;
        } else {
          exist = false;
        }
      }
      if (exist) {
        info = "User he gadhe! Jake Login kar!";
      } else {
        final newUser = User(
          email: newEmail,
          name: newName,
          pass: newPass,
        );
        // final newUser2 = [newEmail, newName, newPass];
        // print(newUser2);
        setState(() {
          userData.add(newUser);
        });
      }
    }

    // final newUser = User(
    //   email: newEmail,
    //   name: newName,
    //   pass: newPass,
    // );
    // setState(() {
    //   userData.add(newUser);
    // });
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
            Container(
              // alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(0, 20, 0, pageHeight * 0.031),
              child: Visibility(
                visible: _imgVisible,
                child: Image.asset(
                  'assets/Images/sign_up.png',
                  width: pageWidth * 0.577 * 1.4, // 0.577
                  height: pageHeight * 0.18 * 1.4, // 0.18
                ),
              ),
            ),
            Container(
              // alignment: Alignment.center,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                bottom: pageHeight * 0.01,
                left: pageWidth * 0.085,
              ),
              child: Text(
                'Name',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.fromLTRB(pageWidth * 0.085, 0, pageWidth * 0.085, 0),
              child: SizedBox(
                height: pageHeight * 0.064,
                child: TextField(
                  controller: inpNameController,
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
                    hintText: 'Your Name',
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
                'Email address',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.fromLTRB(pageWidth * 0.085, 0, pageWidth * 0.085, 0),
              child: SizedBox(
                height: pageHeight * 0.064,
                child: TextField(
                  controller: inpEmailController,
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
              padding:
                  EdgeInsets.fromLTRB(pageWidth * 0.085, 0, pageWidth * 0.085, 0),
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
                    setState(() {
                      _imgVisible = !_imgVisible;
                    });
                  },
                  controller: inpPassController,
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
                        _passVisible ? Icons.visibility : Icons.visibility_off,
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
              padding: EdgeInsets.fromLTRB(pageWidth * 0.172, pageHeight * 0.0607,
                  pageWidth * 0.172, pageHeight * 0.03),
              child: SizedBox(
                height: pageHeight * 0.074,
                width: pageWidth * 0.6472,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(SignUp.routeName);
                    newUserCreate(
                      inpEmailController.text,
                      inpNameController.text,
                      inpPassController.text,
                    );
                    if (info.isNotEmpty) {
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
                            info.toString(),
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
                                if (info == "User he gadhe! Jake Login kar!") {
                                  Navigator.pushReplacementNamed(
                                    context,
                                    SignIn.routeName,
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
                    } else {
                      Navigator.of(context)
                          .pushReplacementNamed(GradeSelection.routeName);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Sign up',
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
                  'You have account?',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {
                    //signup screen
                    Navigator.pushReplacementNamed(context, SignIn.routeName);
                  },
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
