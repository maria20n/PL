import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/loadingscreen.dart';
import 'package:flutter_application_1/screens/signup.dart';
import 'package:flutter_application_1/widgets/widgets.dart';

import 'homepage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 400),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(children: [
                        Container(
                          child: Text('Login',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 30,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 1.5,
                                  fontFamily: 'Bebas')),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            LogInput(
                              icon: Icons.mail,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: Icons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                            Text(
                              'Forget Password ?',
                              style: TextStyle(
                                fontFamily: 'Bebas',
                                fontSize: 20,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: 130),
                            RoundedButton(
                              onpressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return HomePage();
                                    },
                                  ),
                                );
                              },
                              buttonText: 'Login',
                            ),
                            SizedBox(height: 40),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Do not have account ?',
                                    style: TextStyle(
                                      fontFamily: 'Bebas',
                                      fontSize: 20,
                                      color: Colors.black54,
                                    )),
                                SizedBox(width: 0),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.black45))),
                                  child: FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return SignUp();
                                            },
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'Sign up',
                                        style: TextStyle(
                                            fontFamily: 'Bebas',
                                            fontSize: 20,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
