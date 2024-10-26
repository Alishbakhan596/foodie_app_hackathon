import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackaton_foodapp/Utils/constants/colors.dart';
import 'package:hackaton_foodapp/views/login/register.dart';
import 'package:hackaton_foodapp/views/signUp/sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: GrdColor.colorsScaffold,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Center(child: Image.asset("assets/images/logo.png")),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Deliver Favourite Food",
                    style: TextStyle(color: White, fontSize: 25),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 400,
                      width: 350,
                      decoration: BoxDecoration(
                          gradient: containerGrd.gradientColor,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                spreadRadius: 5.0),
                          ]),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              " Login ",
                              style: TextStyle(
                                  color: White,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Register(),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  child: Text(
                    "Don't have an account",
                    style: TextStyle(fontSize: 20, color: White),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                    child: TextButton(
                  onPressed: () {
                    Get.to(SignUp());
                  },
                  child: Text(
                    "REGISTER",
                    style: TextStyle(fontSize: 17, color: White),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
