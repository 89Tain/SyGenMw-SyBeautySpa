import 'package:beauty_spa/actions/login/login.action.loginView.dart';
import 'package:beauty_spa/constants/constants.dart';
import 'package:beauty_spa/models/login.models.dart';
import 'package:beauty_spa/views/auth/register.dart';
import 'package:beauty_spa/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../widgets/curved_button.dart';
import '../../widgets/custom_textfields.dart';
import 'forgot_password.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  @override
  void initState() {
    super.initState();
    tCheckLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        left: false,
        right: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/logo2.jpeg'),

                  // Email
                  CustomTextField(
                    controller: emailController,
                    hint: 'Email',
                  ),
                  CustomTextField(
                    controller: passwordController,
                    hint: 'Password',
                    isPassword: true,
                  ),
                  CurvedButton(
                    text: 'Login',
                    textColor: Colors.white,
                    buttonColor: Constants().primaryColor,
                    borderColor: Colors.white,
                    onPressed: () {
                      tAuthentication(context);
                    },
                    height: 40,
                    fontSize: 18,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.to(const RegisterView());
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(color: Constants().secondaryColor),
                          )),
                      TextButton(
                          onPressed: () {
                            Get.to(const ForgotPasswordView());
                          },
                          child: Text('Forgot Password?',
                              style:
                                  TextStyle(color: Constants().secondaryColor)))
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

Future tCheckLogin() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  if (preferences.containsKey("userEmail")) {
    Get.offAll(const Homeview());
  }
}
