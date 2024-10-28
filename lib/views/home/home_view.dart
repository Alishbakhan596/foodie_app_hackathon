import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackaton_foodapp/views/home/home_screen.dart';
import 'package:hackaton_foodapp/widgets/Button/buttons.dart';
import 'package:hackaton_foodapp/widgets/bottomNavigationMeu/bottom_navigation.dart';

import '../../Models/model.dart';
import '../../Utils/constants/colors.dart';

class HomeView extends StatefulWidget {
  final String? name;
  final num? price;
  final String? resName;
  final String? image;

  const HomeView({super.key, this.name, this.price, this.resName, this.image});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(gradient: GrdColor.colorsScaffold),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            forceMaterialTransparency: true,
            leading: IconButton(
                onPressed: () {
                  Get.to(HomeScreen());
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: White,
                )),
            actions: [
              Row(
                children: [
                  Icon(Icons.favorite, color: White),
                  const SizedBox(width: 5),
                  Icon(
                    Icons.more_horiz,
                    color: White,
                  ),
                ],
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 360,
                  width: width, //500,
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.all(23),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/burger(1).jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                          child: Container(
                            height: 170,
                            width: width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              color: litepurple.withOpacity(0.2),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 40,
                                    offset: Offset(0, 5))
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Beef Burger",
                                      style:
                                          TextStyle(fontSize: 20, color: White),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "450",
                                      style:
                                          TextStyle(fontSize: 20, color: White),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      width: 120,
                                      height: 38,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color:
                                                  const Color(0xff6562fbc4))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                if (count > 1) {
                                                  count--;
                                                }
                                              });
                                            },
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 15),
                                              child: Icon(Icons.minimize,
                                                  color: White),
                                            ),
                                          ),
                                          Text(
                                            "$count",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: White,
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                count++;
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: White,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 70),
                Button(
                  insideText: "Add To Basket",
                  ontap: () {
                    setState(() {
                      cartData.add(CartModel(
                          image: widget.image ?? "",
                          title: widget.name ?? "",
                          count: count,
                          price: widget.price ?? 0,
                          resname: widget.resName ?? ""));
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavigationMenu(
                                  initialIndex: 2,
                                )));
                  },
                )
              ],
            ),
          ),
        ));
  }
}