import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackaton_foodapp/Utils/constants/colors.dart';
import 'package:hackaton_foodapp/services/auth/auth_service.dart';
import 'package:hackaton_foodapp/views/home/home_screen.dart';
import 'package:hackaton_foodapp/widgets/snack_bar.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool _isObecure = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
  }

  void signUpUser() async {
    String res = await AuthService().signUpUser(
        email: emailController.text,
        password: passwordController.text,
        name: nameController.text);
    if (res == "success") {
      setState(() {
        isLoading = true;
      });
      Get.offAll(() => const HomeScreen());
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
          const SizedBox(height: 20),
          _inputField("Name", nameController),
          const SizedBox(height: 20),
          _Field(
            "Email",
            emailController,
          ),
          const SizedBox(height: 20),
          _input("Password", passwordController, isPassword: true),
          const SizedBox(height: 30),
          _loginBtn(),
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
        borderSide: BorderSide(color: White));

    return TextField(
      style: TextStyle(color: White),
      controller: controller,
      decoration: InputDecoration(
          hintText: hintext,
          hintStyle: TextStyle(color: White),
          enabledBorder: border,
          focusedBorder: border,
          prefixIcon: Icon(
            Icons.person,
            color: White,
          )),
    );
  }

  Widget _Field(
    String hintext,
    TextEditingController controller,
  ) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: White));

    return TextField(
      style: TextStyle(color: White),
      controller: controller,
      decoration: InputDecoration(
          hintText: hintext,
          hintStyle: TextStyle(color: White),
          enabledBorder: border,
          focusedBorder: border,
          prefixIcon: Icon(
            Icons.email_rounded,
            color: White,
          )),
    );
  }

  Widget _input(String hintext, TextEditingController controller,
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
          prefixIcon: Icon(
            Icons.lock,
            color: White,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isObecure = !_isObecure;
              });
            },
            icon: Icon(
              _isObecure ? Icons.visibility : Icons.visibility_off,
              color: White,
            ),
          )),
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
            signUpUser();
            Get.offAll(() => const HomeScreen());
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Center(
            child: Text(
              "Create Account",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )),
    );
  }
}
