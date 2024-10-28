import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackaton_foodapp/Models/model.dart';
import 'package:hackaton_foodapp/Utils/constants/colors.dart';
import 'package:hackaton_foodapp/views/home/home_screen.dart';
import 'package:hackaton_foodapp/views/orderPlace/order_place.dart';

import '../../widgets/Button/buttons.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  num totalPrice = 0;

  @override
  void initState() {
    super.initState();
    for (var element in cartData) {
      num total = element.count * element.price;
      totalPrice += total;
    }
    setState(() {});
  }

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  int count = 1;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: GrdColor.colorsScaffold,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Get.to(const HomeScreen());
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: White,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Order Details",
                style: TextStyle(
                    fontSize: 24, color: White, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              Container(
                height: 150,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: GrdColor.colorsScaffold,
                    border: Border.all(color: White.withOpacity(0.3))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/burger(1).jpeg"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "450",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: White,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Beef Burger",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: White,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "With Fries",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 120,
                                  height: 38,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: const Color(0xff6562fbc4))),
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
                                          margin:
                                              const EdgeInsets.only(bottom: 15),
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
                                const SizedBox(
                                  width: 180,
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: White,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 150,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: GrdColor.colorsScaffold,
                    border: Border.all(color: White.withOpacity(0.3))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/image 17.png"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$16.00",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: White,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Udon Miso",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: White,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "With bismatic rice",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 120,
                                  height: 38,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: const Color(0xff6562fbc4))),
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
                                          margin:
                                              const EdgeInsets.only(bottom: 15),
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
                                const SizedBox(
                                  width: 160,
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: White,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 150,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: GrdColor.colorsScaffold,
                    border: Border.all(color: White.withOpacity(0.3))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/pasta.jpg"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$21.00",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: White,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Pasta",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: White,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "With beef becon",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 120,
                                  height: 38,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: const Color(0xff6562fbc4))),
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
                                          margin:
                                              const EdgeInsets.only(bottom: 15),
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
                                const SizedBox(
                                  width: 180,
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: White,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 120),
                  width: 364,
                  height: 67,
                  child: Button(
                    insideText: "Check Out",
                    ontap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SingleChildScrollView(
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: GrdColor.colorsScaffold,
                                ),
                                width: double.infinity,
                                height: 450,
                                margin: const EdgeInsets.only(top: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 20),
                                          child: const Text(
                                            "Checkout",
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(right: 20),
                                          child: const Icon(
                                            Icons.cancel_outlined,
                                            size: 40,
                                            color: Color(0xffB3B3B3),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                          top: BorderSide(
                                              width: 1.0,
                                              color: Colors.grey.shade300),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    ListTile(
                                      title: const Text(
                                        "Subtotal",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff7C7C7C)),
                                      ),
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "\$96.00",
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          const Icon(Icons.arrow_forward_ios),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                          top: BorderSide(
                                              width: 1.0,
                                              color: Colors.grey.shade300),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const ListTile(
                                      title: Text(
                                        "Delivery Fees",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff7C7C7C)),
                                      ),
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "\$2.1 ",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          Icon(Icons.arrow_forward_ios),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                          top: BorderSide(
                                              width: 1.0,
                                              color: Colors.grey.shade300),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    ListTile(
                                      title: const Text(
                                        "Total Cost",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff7C7C7C)),
                                      ),
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "\$98.1",
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          const Icon(Icons.arrow_forward_ios),
                                        ],
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            top: 30, bottom: 20),
                                        width: 364,
                                        height: 67,
                                        child: Button(
                                          insideText: "Place Order",
                                          ontap: () async {
                                            List products = cartData
                                                .map((item) => item.title)
                                                .toList();
                                            List quantity = cartData
                                                .map((item) => item.count)
                                                .toList();
                                            List resName = cartData
                                                .map((item) => item.resname)
                                                .toList();
                                            Map<String, dynamic> order = {
                                              "Resturant": resName,
                                              "product": products,
                                              "quantity": quantity,
                                              "total": totalPrice,
                                            };

                                            await firestore
                                                .collection("order")
                                                .add(order);
                                            Get.to(OrderPlace());
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          enableDrag: true,
                          isScrollControlled: false,
                          isDismissible: true,
                          backgroundColor: const Color(0xff1D102D),
                          barrierColor: Colors.black.withOpacity(0.1));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
