import 'package:flutter/material.dart';
import 'package:repair_home_capstone_project/widgets/details_card.dart';

import 'cart.dart';

class FixMicrowave extends StatelessWidget {
  const FixMicrowave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xfff3b29e),
        title: const Text(
          'Fix Microwave',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: screenSize.height * .4,
                width: screenSize.width,
                decoration: const BoxDecoration(
                    color: Color(0xfff3b29e),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    )),
              ),
              Positioned(
                  right: -30,
                  bottom: -2,
                  child: Image.asset('assets/images/Group 4.png', width: 300,)),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenSize.height * .05,
                    ),
                    Container(
                      padding: const EdgeInsets.all(100),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image:
                                  AssetImage('assets/images/microwave.png'))),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: const Color(0xfff3b29e),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              'Reviews',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset('assets/icons/chat_icon.png'),
                    )),
                  ],
                ),
                const DetailsCard(text: 'repair', price: '\$52'),
                const DetailsCard(text: 'setup', price: '\$12'),


                const SizedBox(
                  height: 23,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: const Color(0xff000000),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Reviews',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1, color: const Color(0xffe8e8e8))),
                      child: const Center(
                        child: Text(
                          'Order setup',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
