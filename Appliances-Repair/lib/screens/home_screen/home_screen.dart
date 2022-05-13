import 'package:appliances_repair/screens/single_item/single_item.dart';
import 'package:appliances_repair/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List optList = ["Popular", "Kitchen", "Living room", "Bath room"];
  List repairList = [
    "Fix Microwave",
    "Fix Tv Set",
    "Fix Refrigirator",
    "Fix Oven"
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Text(
                  "What's broken?",
                  style: TextStyle(
                      fontSize: getProportionateScreenHeight(22),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Container(
                  width: SizeConfig.screenWidth * 0.9,
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide:
                                BorderSide(color: Colors.grey.shade300)),
                        suffixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.all(6),
                        hintText: "Search appliances",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(25),
                ),
                Text(
                  "Offers",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenHeight(18),
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.screenHeight * 0.27,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: SizeConfig.screenWidth * 0.4,
                        height: SizeConfig.screenHeight * 0.22,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: (index + 1) % 2 != 0
                                ? Colors.teal.shade100
                                : Colors.indigo.shade100,
                            borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Valid until June 30",
                                style: TextStyle(
                                    fontSize: getProportionateScreenHeight(10)),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              Text(
                                "Cashback 5% from each repair",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: getProportionateScreenHeight(13)),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              Container(
                                height: SizeConfig.screenHeight * 0.14,
                                alignment: Alignment.centerRight,
                                child: Image.network(
                                  "https://images.unsplash.com/photo-1606310261591-d6cb98acde93?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3334&q=80",
                                  fit: BoxFit.contain,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Text(
                  "We can fix it",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenHeight(18),
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.screenHeight * 0.05,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: optList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        //width: SizeConfig.screenWidth * 0.2,
                        margin: EdgeInsets.all(10),

                        decoration: BoxDecoration(
                            color: index == 0 ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            optList[index],
                            style: TextStyle(
                                color:
                                    index == 0 ? Colors.white : Colors.black54),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(10)),
                Container(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight * 0.3,
                    child: ListView.builder(
                        itemCount: repairList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SingleItem()));
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade100.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.tv_outlined),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          repairList[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800),
                                        ),
                                        Text("Kitchen")
                                      ],
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 14,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
