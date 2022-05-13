import 'package:flutter/material.dart';
import 'package:repair_home_capstone_project/screens/homescreen/home_screen.dart';
import 'package:repair_home_capstone_project/widgets/custom_buttons.dart';

import '../../widgets/customTextField.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery
        .of(context)
        .size;
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
                      image: AssetImage('assets/images/signup_bg.png'))),
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
                        height: screenSize.height * 0.05,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Create new account',
                          textAlign: TextAlign.left,
                          style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
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

                      //Confirm Password field
                      const CustomTextField(
                        hintText: 'Confirm password',
                      ),

                      //sign up button
                      const CustomButton(buttonText: 'Sign Up'),

                      //other sign in options
                      Padding(
                        padding: EdgeInsets.only(top: 20,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(height: 5,
                              width: 5,
                              decoration: const BoxDecoration(
                                  color: Colors.grey, shape: BoxShape.circle),),
                            const SizedBox(width: 10,),
                            Text(
                              'Or sign up with -',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),

                      //other sign in options
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Image.asset(
                                'assets/icons/google.png', height: 40,),
                            )),
                            const SizedBox(width: 20,),
                            Expanded(child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Image.asset(
                                'assets/icons/facebook.png', height: 40,),
                            )),
                            const SizedBox(width: 20,),
                            Expanded(child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Image.asset(
                                'assets/icons/twitter.png', height: 40,),
                            )),
                          ],
                        ),
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
