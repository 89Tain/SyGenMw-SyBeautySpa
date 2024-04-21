import 'package:beauty_spa/actions/forgotPassword/recoverAccount.action.forgotPasswordView.dart';
import 'package:beauty_spa/constants/constants.dart';
import 'package:beauty_spa/models/login.models.dart';
import 'package:beauty_spa/views/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/curved_button.dart';
import '../../widgets/custom_textfields.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        left: false,
        right: false,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Constants().appLogo,
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
              controller: emailController,
              hint: 'Email Address',
            ),
            CurvedButton(
              text: 'Reset Password',
              textColor: Colors.white,
              buttonColor: Constants().primaryColor,
              borderColor: Colors.white,
              onPressed: () {
                tRecoverAccount(context);
              },
              height: 40,
              fontSize: 18,
              width: MediaQuery.of(context).size.width,
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: TextButton(
                    onPressed: () {
                      Get.to(const LoginView());
                    },
                    child: const Text('Return')))
          ]),
        ),
      ),
    );
  }
}
