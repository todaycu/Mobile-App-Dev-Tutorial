import 'package:flutter/material.dart';
import 'package:repair_home_capstone_project/screens/details/microwave.dart';
import 'package:repair_home_capstone_project/widgets/headers.dart';
import 'package:repair_home_capstone_project/widgets/offers_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      body: SafeArea(
        child: Stack(fit: StackFit.expand, children: [
          Container(
            height: screenSize.height,
            width: screenSize.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/home_bg.png'))),
          ),
          Positioned(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/icons/drawer.png'),
                        Image.asset('assets/icons/shop.png'),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 32.0),
                      child: Text(
                        'What\'s broken?',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: screenSize.width,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      margin: const EdgeInsets.only(top: 16, bottom: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Search appliances',
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(
                            Icons.search_outlined,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    const Headers(text: 'Offers'),

                    //OFFERS SECTION
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.37,
                      child: ListView(
                        padding: const EdgeInsets.all(8),
                        scrollDirection: Axis.horizontal,
                        children: [
                          OffersCard(
                              upperColor: Colors.cyanAccent.withOpacity(0.15),
                              lowerColor: Colors.white,
                              upperText: 'valid until june 30th',
                              lowerText: 'Cashback 5%\nfrom each\nrepair',
                              image: 'assets/images/offer1.png'),
                          const OffersCard(
                              upperColor: Colors.white,
                              lowerColor: Color(0xffd6e3ff),
                              upperText: 'valid until july 2nd',
                              lowerText: 'Sale on\nappliances and\nrepair!',
                              image: 'assets/images/offer2.png'),
                          OffersCard(
                              upperColor: Colors.cyanAccent.withOpacity(0.15),
                              lowerColor: Colors.white,
                              upperText: 'valid until june 30th',
                              lowerText: 'Cashback 5%\nfrom each\nrepair',
                              image: ''),
                        ],
                      ),
                    ),

                    //WE CAN FIX IT SECTION
                    const Headers(text: 'We can fix it'),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 26),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(22)),
                              child: const Text(
                                'Offers',
                                style: TextStyle(color: Colors.white),
                              )),
                          const Text('Kitchen',
                              style: TextStyle(color: Colors.grey)),
                          const Text('Livingroom',
                              style: TextStyle(color: Colors.grey)),
                          const Text('Bathroom',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.cyanAccent.withOpacity(0.15),
                      ),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FixMicrowave()));
                        },
                        leading: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: const Color(0xffc7d9ff),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.microwave,
                            color: Colors.white,
                          ),
                        ),
                        title: const Text('Fix Microwave',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                        subtitle: const Text('Kitchen'),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 12,
                    ),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.cyanAccent.withOpacity(0.15),
                      ),
                      child: ListTile(
                        leading: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: const Color(0xffc7d9ff),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.live_tv_sharp,
                            color: Colors.white,
                          ),
                        ),
                        title: const Text('Fix TV set',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                        subtitle: const Text('Living room'),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
