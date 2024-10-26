import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackaton_foodapp/Models/model.dart';
import 'package:hackaton_foodapp/Utils/constants/colors.dart';
import 'package:hackaton_foodapp/views/Location/location.dart';
import 'package:hackaton_foodapp/views/home/home_screen.dart';

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
                    Get.to(HomeScreen());
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: White,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Order Details",
                style: TextStyle(
                    fontSize: 24, color: White, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
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
                        Image.asset("assets/images/image2.png"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$52.00",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: White,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Chicken Veggi Salad",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: White,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "With cheese sauce",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 120,
                                  height: 38,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color(0xff6562FBC4))),
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
                                          margin: EdgeInsets.only(bottom: 15),
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
                                SizedBox(
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
              SizedBox(height: 10),
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
                        Image.asset("assets/images/image.png"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$23.00",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: White,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Mutton curry",
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
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 120,
                                  height: 38,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color(0xff6562FBC4))),
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
                                          margin: EdgeInsets.only(bottom: 15),
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
                                SizedBox(
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
              SizedBox(height: 10),
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
                        Image.asset("assets/images/image1.png"),
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
                              "French Fry",
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
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 120,
                                  height: 38,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color(0xff6562FBC4))),
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
                                          margin: EdgeInsets.only(bottom: 15),
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
                                SizedBox(
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
              SizedBox(height: 70),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 120),
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
                                margin: EdgeInsets.only(top: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Checkout",
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 20),
                                          child: Icon(
                                            Icons.cancel_outlined,
                                            size: 40,
                                            color: Color(0xffB3B3B3),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
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
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ListTile(
                                      title: Text(
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
                                            "\$${totalPrice.toStringAsFixed(2)}   ",
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
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ListTile(
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
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ListTile(
                                      title: Text(
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
                                            "\$${(totalPrice + 2.1).toStringAsFixed(2)} ",
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
                                      margin: EdgeInsets.only(left: 20),
                                      child: RichText(
                                        text: TextSpan(
                                          text:
                                              'By placing an order you agree to our\n',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff7C7C7C)),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'Terms',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' And ',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xff7C7C7C),
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Conditions',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
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
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Location()));
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
                          backgroundColor: Color(0xff1D102D),
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
