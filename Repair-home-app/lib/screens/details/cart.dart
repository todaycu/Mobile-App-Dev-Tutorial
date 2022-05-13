import 'package:flutter/material.dart';
import 'package:repair_home_capstone_project/screens/splash_screen/splash_screen.dart';
import 'package:repair_home_capstone_project/widgets/cart_list.dart';
import 'package:repair_home_capstone_project/widgets/cart_listile.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Cart',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: screenSize.height,
            width: screenSize.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/cart_bg.png'))),
          ),
          SingleChildScrollView(
            child: SizedBox(
              height: screenSize.height + 10,
              width: screenSize.width,
              child: Column(
                children: [
                  SizedBox(
                    height: screenSize.height * .15,
                  ),
                  const CartListTile(title: 'Fix Fridge', subtitle: '2 services', trailing: '\$70', leading: Icons.microwave),



                  const CartListTileTwo(title: 'Set up Microwave', trailing: '\$22'),
                  const CartListTileTwo(title: 'Repair Microwave', trailing: '\$80'),


                  const CartListTile(title: 'Fix Fridge', subtitle: '2 services', trailing: '\$70', leading: Icons.microwave),
                  const CartListTile(title: 'Fix Washer', subtitle: '1 service', trailing: '\$135', leading: Icons.wash),
                  const CartListTile(title: 'Fix Computer', subtitle: '1 service', trailing: '\$30', leading: Icons.tv),
                  const SizedBox(height: 20,),



                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Total price',
                          style:
                              TextStyle(color: Color(0xff7B7B7B), fontSize: 16),
                        ),
                        Text(
                          '\$302',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    width: screenSize.width,
                    height: screenSize.height*.075,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      onPressed: () => Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SplashScreen()),
                          (route) => false),
                      child: const Text(
                        'Make an order',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
