import 'package:flutter/material.dart';
import 'package:hackaton_foodapp/Utils/constants/colors.dart';
import 'package:hackaton_foodapp/views/signUp/create_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  padding: const EdgeInsets.all(16),
                  child: Center(child: Image.asset("assets/images/logo.png")),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    "Deliver Favourite Food",
                    style: TextStyle(color: White, fontSize: 25),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 380,
                      width: 350,
                      decoration: BoxDecoration(
                          gradient: containerGrd.gradientColor,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                spreadRadius: 5.0),
                          ]),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              " Signup ",
                              style: TextStyle(
                                  color: White,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const CreateAccount()
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  child: Text(
                    "Don't have an account",
                    style: TextStyle(fontSize: 20, color: White),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                    child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "SIGNUP",
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
