import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackaton_foodapp/Utils/constants/colors.dart';
import 'package:hackaton_foodapp/views/menu/menu2_screen.dart';
import 'package:hackaton_foodapp/views/menu/menu_screen.dart';
import 'package:hackaton_foodapp/widgets/bottomNavigationMeu/bottom_navigation.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        gradient: GrdColor.colorsScaffold,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          forceMaterialTransparency: true,
          leading: IconButton(
            onPressed: () {
              Get.to(const BottomNavigationMenu());
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: White,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
              color: White,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 360,
                width: 500,
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(23),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/image 18.png"),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Positioned(
                        bottom: 10,
                        // top: 10,
                        child: Container(
                          height: 155,
                          width: 355,
                          decoration: BoxDecoration(
                            color: Purple.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 10),
                                    child: Icon(
                                      Icons.assistant_navigation,
                                      size: 35,
                                      color: White,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Kinka Izakaya",
                                        style: TextStyle(
                                            fontSize: 15, color: White),
                                      ),
                                      Text(
                                        "2972 Westheimer Rd, Santa Ana",
                                        style: TextStyle(
                                            fontSize: 13, color: Grey),
                                      ),
                                      const SizedBox(height: 10)
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Delivery fee",
                                        style: TextStyle(
                                            color: White, fontSize: 14),
                                      ),
                                      Text(
                                        "\$3.99",
                                        style: TextStyle(
                                            color: White, fontSize: 14),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Delivery fee",
                                        style: TextStyle(
                                            color: White, fontSize: 14),
                                      ),
                                      Text(
                                        "\$3.99",
                                        style: TextStyle(
                                            color: White, fontSize: 14),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Delivery fee",
                                        style: TextStyle(
                                            color: White, fontSize: 14),
                                      ),
                                      Text(
                                        "\$3.99",
                                        style: TextStyle(
                                            color: White, fontSize: 14),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 210,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: GrdColor.colorsScaffold,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                height: 35,
                                width: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: litepurple.withOpacity(0.5)),
                                child: Center(
                                  child: Text(
                                    "Delivery",
                                    style:
                                        TextStyle(fontSize: 16, color: White),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                child: Center(
                                  child: Text("Take Out",
                                      style: TextStyle(
                                          fontSize: 16, color: White)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 45,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: GrdColor.colorsScaffold),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.person_add_alt, color: White),
                                  const SizedBox(width: 5),
                                  Center(
                                    child: Text("Group Order",
                                        style: TextStyle(
                                            color: White, fontSize: 15)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.search, color: White),
                    Text(
                      "Featured Items",
                      style: TextStyle(fontSize: 20, color: White),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      "Apptizers",
                      style: TextStyle(fontSize: 20, color: White),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      "Sushi",
                      style: TextStyle(fontSize: 20, color: White),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  color: White,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(const MenuScreen());
                      },
                      child: Container(
                          height: 180,
                          width: 420,
                          decoration: BoxDecoration(
                              gradient: GrdColor.colorsScaffold,
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: White.withOpacity(0.3))),
                          child: Stack(children: [
                            Positioned(
                              left: 20,
                              top: 20,
                              child: Text(
                                "Udon Miso",
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
                                "Thick handmade udon\nnoodles in a rich miso brot...",
                                style: TextStyle(color: Grey, fontSize: 14),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 130,
                              child: Text(
                                "\$16.00",
                                style: TextStyle(color: White, fontSize: 20),
                              ),
                            ),
                            Positioned(
                              //left: 0,
                              right: 5,
                              bottom: 10,
                              top: 0,
                              child: Image.asset(
                                "assets/images/item.png",
                                height: 200,
                                width: 150,
                              ),
                            ),
                          ])),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Get.to(const Menu2Screen());
                      },
                      child: Container(
                          height: 180,
                          width: 420,
                          decoration: BoxDecoration(
                              gradient: GrdColor.colorsScaffold,
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: White.withOpacity(0.3))),
                          child: Stack(children: [
                            Positioned(
                              left: 20,
                              top: 20,
                              child: Text(
                                "Udon Miso",
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
                                "Thick handmade udon\nnoodles in a rich miso brot...",
                                style: TextStyle(color: Grey, fontSize: 14),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 130,
                              child: Text(
                                "\$16.00",
                                style: TextStyle(color: White, fontSize: 20),
                              ),
                            ),
                            Positioned(
                              //left: 0,
                              right: 5,
                              bottom: 10,
                              top: 0,
                              child: Image.asset(
                                "assets/images/item.png",
                                height: 200,
                                width: 150,
                              ),
                            ),
                          ])),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
