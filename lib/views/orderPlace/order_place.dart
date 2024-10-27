import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackaton_foodapp/views/Location/location.dart';

import '../../Utils/constants/colors.dart';

class OrderPlace extends StatefulWidget {
  const OrderPlace({super.key});

  @override
  State<OrderPlace> createState() => _OrderPlaceState();
}

class _OrderPlaceState extends State<OrderPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: GrdColor.colorsScaffold,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.check_circle_rounded,
                            size: 110, color: White),
                      ),
                      Text(
                        "Your Order has been \n          accepted",
                        style: TextStyle(
                            fontSize: 29,
                            color: White,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 50),
                      Text(
                        "Your items has been placed and is on \n       it's way to being processed",
                        style: TextStyle(
                            fontSize: 17,
                            color: Grey,
                            fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 70),
              Container(
                height: 45,
                width: 254,
                decoration: BoxDecoration(
                  gradient: containerGrd.gradientColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(Location());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: Center(
                    child: Text(
                      "Track Order",
                      style: TextStyle(color: White, fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
