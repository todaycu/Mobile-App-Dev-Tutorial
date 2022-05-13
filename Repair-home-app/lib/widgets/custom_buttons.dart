import 'package:flutter/material.dart';

import '../screens/homescreen/home_screen.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;

  const CustomButton({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      height: 60,
      margin: const EdgeInsets.only(top: 16),
      child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).primaryColor)),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => const HomeScreen()));
          },
          child: Text(
            buttonText,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500),
          )),
    );
  }
}
