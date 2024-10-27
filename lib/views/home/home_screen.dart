import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackaton_foodapp/Utils/constants/colors.dart';

import '../Restaurant/restaurant_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: GrdColor.colorsScaffold,
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: White,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Delivery",
                      style: TextStyle(
                        fontSize: 15,
                        color: Grey,
                      ),
                    ),
                    Text(
                      "Maplewood Suites",
                      style: TextStyle(
                        fontSize: 18,
                        color: White,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 200),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.directions_run,
                      color: White,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.directions_bike,
                      color: White,
                    )),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                    hintText: 'Your Order?',
                    hintStyle: TextStyle(color: White),
                    filled: true,
                    fillColor:
                        const Color.fromARGB(119, 63, 39, 136).withOpacity(0.6),
                    enabled: true,
                    prefixIcon: Icon(Icons.search, size: 28, color: White),
                    suffixIcon: Icon(
                      Icons.qr_code_scanner,
                      color: White,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                        ))),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: White,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 20,
                          color: Grey,
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            gradient: GrdColor.colorsScaffold,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: White.withOpacity(0.3))),
                        child: const Image(
                            image: AssetImage("assets/images/burger.png")),
                      ),
                      Text(
                        "Burgers",
                        style: TextStyle(color: White),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            gradient: GrdColor.colorsScaffold,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: White.withOpacity(0.3))),
                        child: const Image(
                            image: AssetImage("assets/images/cake.png")),
                      ),
                      Text(
                        "Desert",
                        style: TextStyle(color: White),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            gradient: GrdColor.colorsScaffold,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: White.withOpacity(0.3))),
                        child: const Image(
                            image: AssetImage("assets/images/taco.png")),
                      ),
                      Text(
                        "Mexican",
                        style: TextStyle(color: White),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            gradient: GrdColor.colorsScaffold,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: White.withOpacity(0.3))),
                        child: const Image(
                            image: AssetImage("assets/images/sushi.png")),
                      ),
                      Text(
                        "Sushi",
                        style: TextStyle(color: White),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      height: 180,
                      width: 320,
                      decoration: BoxDecoration(
                          gradient: GrdColor.colorsScaffold,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: White.withOpacity(0.3))),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 20,
                            top: 20,
                            child: Text(
                              "30% OFF",
                              style: TextStyle(
                                  color: White,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 60,
                            child: Text(
                              "Discover discounts in your\nfavourite local restaurants",
                              style: TextStyle(color: Grey, fontSize: 14),
                            ),
                          ),
                          Positioned(
                            //left: 0,
                            right: 0,
                            bottom: 15,
                            top: 0,
                            child: Image.asset(
                              "assets/images/pasta.png",
                              height: 200,
                              width: 150,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            bottom: 20,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shadowColor:
                                      const Color.fromARGB(255, 33, 65, 243),
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Center(
                                child: Text(
                                  "Order now",
                                  style: TextStyle(color: White, fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 180,
                      width: 320,
                      decoration: BoxDecoration(
                          gradient: GrdColor.colorsScaffold,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: White.withOpacity(0.3))),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 20,
                            top: 20,
                            child: Text(
                              "30% OFF",
                              style: TextStyle(
                                  color: White,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 60,
                            child: Text(
                              "Discover discounts in your\nfavourite local restaurants",
                              style: TextStyle(color: Grey, fontSize: 14),
                            ),
                          ),
                          Positioned(
                            //left: 0,
                            right: 0,
                            bottom: 15,
                            top: 0,
                            child: Image.asset(
                              "assets/images/pasta.png",
                              height: 200,
                              width: 150,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            bottom: 20,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shadowColor:
                                      const Color.fromARGB(255, 33, 65, 243),
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Center(
                                child: Text(
                                  "Order now",
                                  style: TextStyle(color: White, fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 180,
                      width: 320,
                      decoration: BoxDecoration(
                          gradient: GrdColor.colorsScaffold,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: White.withOpacity(0.3))),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 20,
                            top: 20,
                            child: Text(
                              "30% OFF",
                              style: TextStyle(
                                  color: White,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 60,
                            child: Text(
                              "Discover discounts in your\nfavourite local restaurants",
                              style: TextStyle(color: Grey, fontSize: 14),
                            ),
                          ),
                          Positioned(
                            //left: 0,
                            right: 0,
                            bottom: 15,
                            top: 0,
                            child: Image.asset(
                              "assets/images/pasta.png",
                              height: 200,
                              width: 150,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            bottom: 20,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shadowColor:
                                      const Color.fromARGB(255, 33, 65, 243),
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Center(
                                child: Text(
                                  "Order now",
                                  style: TextStyle(color: White, fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 180,
                      width: 320,
                      decoration: BoxDecoration(
                          gradient: GrdColor.colorsScaffold,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: White.withOpacity(0.3))),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 20,
                            top: 20,
                            child: Text(
                              "30% OFF",
                              style: TextStyle(
                                  color: White,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 60,
                            child: Text(
                              "Discover discounts in your\nfavourite local restaurants",
                              style: TextStyle(color: Grey, fontSize: 14),
                            ),
                          ),
                          Positioned(
                            //left: 0,
                            right: 0,
                            bottom: 15,
                            top: 0,
                            child: Image.asset(
                              "assets/images/pasta.png",
                              height: 200,
                              width: 150,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            bottom: 20,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shadowColor:
                                      const Color.fromARGB(255, 33, 65, 243),
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Center(
                                child: Text(
                                  "Order now",
                                  style: TextStyle(color: White, fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  "Fastest near you",
                  style: TextStyle(fontSize: 18, color: White),
                ),
              ]),
            ),
            InkWell(
              onTap: () {
                Get.to(const RestaurantScreen());
              },
              child: Container(
                height: 180,
                width: 400,
                decoration: BoxDecoration(
                  gradient: GrdColor.colorsScaffold,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: White.withOpacity(0.4)),
                ),
                child: Image.asset(
                  "assets/images/dish.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
