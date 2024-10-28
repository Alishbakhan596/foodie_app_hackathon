import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackaton_foodapp/Utils/constants/colors.dart';
import 'package:hackaton_foodapp/widgets/stepper/stepperdata.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({super.key});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
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
                  "Track Order",
                  style: TextStyle(
                      fontSize: 24, color: White, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Order ID: 4544882266",
                      style: TextStyle(
                          fontSize: 17, color: White.withOpacity(0.8)),
                    ),
                    Text(
                      "Today",
                      style: TextStyle(fontSize: 17, color: White),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              AnotherStepper(
                stepperList: stepperData,
                barThickness: 1.9,
                verticalGap: 35,
                activeBarColor: White,
                inActiveBarColor: White,
                stepperDirection: Axis.vertical,
                iconHeight: 30,
                iconWidth: 30,
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: const Text(
                  'Order Track',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              _buildOrderTrack(),
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
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://png.pngtree.com/png-clipart/20220123/original/pngtree-boy-avatar-png-image_7166566.png'),
                radius: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Mr. Kemplas',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '25 minutes on the way',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 45,
            width: 254,
            decoration: BoxDecoration(
              gradient: buttons.buttonColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              child: Center(
                child: Text(
                  "Call",
                  style: TextStyle(color: White, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
