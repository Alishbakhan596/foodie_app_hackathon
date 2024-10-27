import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hackaton_foodapp/views/Cart/cart_screen.dart';
import 'package:hackaton_foodapp/views/Restaurant/restaurant_screen.dart';

import '../../views/home/home_screen.dart';

class BottomNavigationMenu extends StatefulWidget {
  final int initialIndex;
  const BottomNavigationMenu({super.key, this.initialIndex = 0});

  @override
  State<BottomNavigationMenu> createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {
  late int currentindex;

  @override
  void initState() {
    super.initState();
    currentindex = widget.initialIndex;
  }

  final ListChildrens = [
    const HomeScreen(),
    const RestaurantScreen(),
    const CartScreen(),
    // const MyOrder(),
    // const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          IndexedStack(
            index: currentindex,
            children: ListChildrens,
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * 0.90,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.1),
                          blurRadius: 40,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: SafeArea(
                      child: BottomNavigationBar(
                        type: BottomNavigationBarType.fixed,
                        backgroundColor: Colors.transparent,
                        selectedItemColor: Colors.blue,
                        unselectedItemColor: Colors.grey,
                        onTap: (index) {
                          setState(() {
                            currentindex = index;
                          });
                        },
                        currentIndex: currentindex,
                        items: const [
                          BottomNavigationBarItem(
                              icon: Icon(Icons.home), label: "Home"),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.manage_search), label: "Browse"),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.shopping_cart_rounded),
                              label: "Cart"),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.list_alt_outlined),
                              label: "Orders"),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.person_outline),
                              label: "Accounts"),
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
    );
  }
}
