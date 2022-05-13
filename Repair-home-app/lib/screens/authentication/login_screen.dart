import 'package:flutter/material.dart';
import 'package:repair_home_capstone_project/screens/authentication/signup_screen.dart';
import 'package:repair_home_capstone_project/widgets/customTextField.dart';
import 'package:repair_home_capstone_project/widgets/custom_buttons.dart';

import '../homescreen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              height: screenSize.height,
              width: screenSize.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/login_bg.png'))),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: SingleChildScrollView(
                child: SizedBox(
                  height: screenSize.height,
                  width: screenSize.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo_blue.png',
                        width: screenSize.width * 0.5,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.1,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Login to your account',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ),

                      //Email field
                      const CustomTextField(
                        hintText: 'Email',
                      ),

                      //Password field
                      const CustomTextField(
                        hintText: 'Password',
                      ),

                      //sign in button
                      CustomButton(buttonText: 'Sign In'),

                      //other sign in options
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 16.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 5,
                              width: 5,
                              decoration: const BoxDecoration(
                                  color: Colors.grey, shape: BoxShape.circle),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Or sign in with -',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),

                      //other sign in options cards
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                'assets/icons/google.png',
                                height: screenSize.height * .05,
                              ),
                            )),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                'assets/icons/facebook.png',
                                height: screenSize.height * .05,
                              ),
                            )),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                'assets/icons/twitter.png',
                                height: screenSize.height * .05,
                              ),
                            )),
                          ],
                        ),
                      ),

                      //don't have an account?
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 5,
                            width: 5,
                            decoration: const BoxDecoration(
                                color: Colors.grey, shape: BoxShape.circle),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignupScreen()));
                            },
                            child: RichText(
                                text: TextSpan(
                                    text: 'Don\'t have an account?',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: 16),
                                    children: const [
                                  TextSpan(
                                      text: ' Sign up',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 16))
                                ])),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
