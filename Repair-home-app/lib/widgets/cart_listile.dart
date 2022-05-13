import 'package:flutter/material.dart';

import '../screens/homescreen/home_screen.dart';

class CartListTileTwo extends StatelessWidget {
  final String title, trailing;

  const CartListTileTwo({Key? key, required this.title, required this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.cyanAccent.withOpacity(0.15),
      ),
      child: ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          leading: const Icon(
            Icons.warning_outlined,
            color: Colors.red,
          ),
          title: Text(title,
              style:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
          trailing: Text(
            trailing,
            style: const TextStyle(
              color: Color(0xff7B7B7B),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
