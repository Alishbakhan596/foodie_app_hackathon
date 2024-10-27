import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackaton_foodapp/Utils/constants/colors.dart';
import 'package:hackaton_foodapp/services/auth/auth_service.dart';
import 'package:hackaton_foodapp/views/home/home_screen.dart';
import 'package:hackaton_foodapp/views/signUp/sign_up.dart';
import 'package:hackaton_foodapp/widgets/snack_bar.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isObecure = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void LoginUsers() async {
    String res = await AuthService().LoginUser(
      email: emailController.text,
      password: passwordController.text,
    );
    if (res == "success") {
      setState(() {
        isLoading = true;
      });
      Get.offAll(() => const SignUp());
    } else {
      setState(() {
        isLoading = false;
      });
      showSnackBar(context, res);
    }
  }

  @override
  Widget build(BuildContext context) {
    return _page();
  }

  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _inputField("Email", emailController),
          const SizedBox(height: 20),
          _Field("Password", passwordController, isPassword: true),
          const SizedBox(height: 15),
          _btn(),
          const SizedBox(height: 20),
          _loginBtn(),
          const SizedBox(height: 15),
          _logo(),
        ],
      ),
    );
  }

  Widget _inputField(
    String hintext,
    TextEditingController controller,
  ) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.white));

    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintext,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: border,
        focusedBorder: border,
        prefixIcon: (Icon(
          Icons.person,
          color: White,
        )),
      ),
    );
  }

  Widget _Field(String hintext, TextEditingController controller,
      {isPassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: White));

    return TextField(
      style: TextStyle(color: White),
      controller: controller,
      obscureText: _isObecure,
      decoration: InputDecoration(
          hintText: hintext,
          hintStyle: TextStyle(color: White),
          enabledBorder: border,
          focusedBorder: border,
          prefixIcon: (Icon(
            Icons.lock,
            color: White,
          )),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isObecure = !_isObecure;
              });
            },
            icon: Icon(
              color: White,
              _isObecure ? Icons.visibility : Icons.visibility_off,
            ),
          )),
    );
  }

  Widget _btn() {
    return Container(
      alignment: Alignment.centerRight,
      child: Text(
        "Forget Password?",
        style: TextStyle(
          color: White,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _loginBtn() {
    return Container(
      height: 45,
      width: 254,
      decoration: BoxDecoration(
        gradient: buttons.buttonColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: () {
          LoginUsers();
          Get.to(const HomeScreen());
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        child: Center(
          child: Text(
            "Log In",
            style: TextStyle(color: White, fontSize: 20),
          ),
        ),
      ),
    );
  }

  Widget _logo() {
    return Column(
      children: [
        Container(
          child: Center(
            child: Column(
              children: [
                Text(
                  "Or",
                  style: TextStyle(color: White, fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/icon.png"),
                    const SizedBox(width: 8),
                    Icon(
                      Icons.facebook,
                      color: Blue,
                      size: 35,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
