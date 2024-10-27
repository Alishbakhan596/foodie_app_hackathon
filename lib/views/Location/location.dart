import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackaton_foodapp/Utils/constants/colors.dart';
import 'package:hackaton_foodapp/views/orderPlace/TrackOrder/track_order.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: GrdColor.colorsScaffold,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: White,
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Find Location",
                  style: TextStyle(
                      fontSize: 24, color: White, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 55,
                      width: 440,
                      decoration: BoxDecoration(
                        color: Color(0xFF44103c),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Color.fromRGBO(76, 116, 140, 1.0),
                        ),
                      ),
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            size: 25,
                          ),
                          hintText: 'Find your location',
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 20.0,
                          ),
                        ),
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(
                        height: 10,
                        width: 70,
                      ),
                      Image.asset(
                        'assets/images/map.png',
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  _buildOrderTrack()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderTrack() {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 180,
      width: width,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: containerGrd.gradientColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your location",
            style: TextStyle(fontSize: 15, color: Grey),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(
                Icons.location_on_rounded,
                color: White,
                size: 25,
              ),
              SizedBox(width: 10),
              Text(
                "Manchester, Kentucky 39495",
                style: TextStyle(fontSize: 15, color: White.withOpacity(0.7)),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 45,
              width: 254,
              decoration: BoxDecoration(
                gradient: buttons.buttonColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(TrackOrder());
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                child: Center(
                  child: Text(
                    "Select Location",
                    style: TextStyle(color: White, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
