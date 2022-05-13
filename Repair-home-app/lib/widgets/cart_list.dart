import 'package:flutter/material.dart';

import '../screens/homescreen/home_screen.dart';

class CartListTile extends StatelessWidget {
  final String title, subtitle, trailing;
  final IconData leading;

  const CartListTile(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.trailing,
      required this.leading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.cyanAccent.withOpacity(0.15),
          boxShadow: [
            BoxShadow(
                blurRadius: 2,
                color: Colors.grey.shade200)
          ]),
      child: ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
        leading: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              color: const Color(0xffc7d9ff),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            leading,
            color: Colors.white,
          ),
        ),
        title:  Text(title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
        subtitle:  Text(subtitle),
        trailing: SizedBox(
          width: 60,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Text(trailing,
                style: const TextStyle(
                  color: Color(0xff7B7B7B),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
