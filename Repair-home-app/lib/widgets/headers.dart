import 'package:flutter/material.dart';

class Headers extends StatelessWidget {
  final String text;

  const Headers({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.0),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}
